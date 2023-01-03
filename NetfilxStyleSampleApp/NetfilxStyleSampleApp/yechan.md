**핀퐁 추가 해결 필요사항**

1. 전체 연결 해제 로직 구현
- isMyDataConnected callback 동작 오류
- 마이데이터를 전부 연결 해제하면 업데이트 후 다운로드가 불가하여 Realm에는 데이터가 남아있고, WebView에는 데이터가 지워진 상태가 된다. 해당 상태가 되면 추후 데이터 거래에서 연결해제한 데이터가 거래되거나 홈 화면에서 수입/소비 데이터가 남아있는 등의 버그가 발생한다.
- 이를 해결하기 위해 전체 데이터를 다 삭제한 상태에서 카테고리를 누를 때 콜백이 오도록 협의하였고, 연결된 데이터가 없다는 콜백을 받으면 전체 Realm 파일의 데이터를 삭제해야 한다.

2. 깃랩 이슈 해결 팔로업, 신규 VoC 대응 필요
- https://gitlab.com/snplab-myd/pinpong-api/-/issues
- 신규 VoC가 발생한다면, 코드 수정(개선)으로 처리할지 혹은 코드에프에 요구해야할 내용일지 판단이 필요함. 명세서를 보거나 연산으로 해결할 수 있는지 확인 후, 내부 해결이 불가능하다면 코드에프에 요청 필요. 따라서 개발 인력 모두 혹은 핀퐁 업무 담당자가 슬랙 채널에 초대되어야 함.
- 코드에프 기술적 요구사항, 버그 제보 플로우
  1) 깃랩 issue 업로드
  2) 슬랙으로 깃랩 확인 요청
  3) 슬랙이나 깃랩 issue에 달린 댓글/채팅 확인 후 요구사항이 충족되었는지 확인
  4) 확인 후 gitlab issue close

3. 기존 Espider 기반 코드들 제거 필요
- 기존 Bank, Card, Stock, Insurance등 architecture에 들어간 모든 파일들과 Util 등 삭제 필요.

4. 상용버전 Firebase AppConfiguration 업데이트 필요
- Finding API Key 등의 관련 정보가 들어간 Appconfiguration으로 업데이트 필요


**To Be Determined**

1. 보험 스키마 변경 대응 필요
- 인호님과 공유 및 협의 필요, 코드에프 사에서 보험관련 추가 필드를 제공하기로 했음
- 해당 필드들은 현 상황에서는 UI나 Vo 수정이 필요하지 않음. 다만 추후 기획안 변경에 따라 바뀔 수 있음

2. 카드 UI 변경 대응 필요 
- 현재 FPCardPayment, FPCardBill, FPCardBillDetail은 저장만 하고 UI에 활용되고 있지 않음.
- 추후 기획안 변경에 따라 UI에 활용할 수 있음. 그렇게 된다면 Vo 등 필요에 따라 수정하고 UI 개선 필요

3. 외화에 대한 UI 개선 필요
- 외화 주식, 외화 거래내역 등 각 카테고리별 외화 내역이 UI에 표시되고 있지 않음.
- 외화 데이터는 총 금액 등의 연산에서 배제하고, UI에 ‘표시’하는 데만 활용하도록 개편된 UI 기획안이 나온다면 그에 따른 추가 대응 필요. 현재 외화 데이터도 Realm에는 저장중

**iOS**

Type 정의 - enum
- 핀퐁에서 코드로 주는 특정 status나 type정의는 FinpongVo 파일에서 한번에 확인할 수 있음.
- 해당 enum으로 Vo에 정의된 데이터를 입력해줌. 해당 코드는 FinpongMyDataRepositoryImpl에 존재함

**Advancement**

accessToken 발급 기간 활용
- 현재는 핀퐁 웹뷰에 진입할때마다 AccessToken을 발급한다.
- AccessToken의 발급 여부를 판단해 해당 과정을 생략하면 성능이 향상될 수 있다
