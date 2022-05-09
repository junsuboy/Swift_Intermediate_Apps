# Swift_Intermediate_Apps
스위프트 어플리케이션 구현 모음

# SpotifyLoginSampleApp - Spotify 스타일의 로그인 어플리케이션

## 소개

- Spotify Style의 로그인/로그아웃 기능을 구현한 어플리케이션

## 활용기술

- StoryBoard
- Firebase Authentication을 활용한 일반 로그인 기능 구현
- Firebase를 활용한 구글(SNS) 로그인 기능 구현

## 동작화면
![May-09-2022 11-53-16](https://user-images.githubusercontent.com/86935775/167332725-07813921-fc54-41ad-b6ef-b5eb3aa1e17d.gif)

![May-09-2022 11-53-52](https://user-images.githubusercontent.com/86935775/167332741-63f9d532-4778-4355-b4ac-6fb638ea51c6.gif)

<img width="1728" alt="image" src="https://user-images.githubusercontent.com/86935775/167332985-40a82bf9-2abe-40a9-8852-ec93359feb97.png">



# CreditCardList - 신용카드 추천 어플리케이션

## 소개


- Firebase를 활용하여 DB의 json 형식 데이터를 불러와 화면에 표시하는 형태의 어플리케이션

## 활용기술

- StoryBoard
- Kingfisher (이미지 처리 라이브러리)
- Firebase Reatime Database CRUD
- Firebase Cloud FireStore CRUD

## 동작화면
<img width="1312" alt="스크린샷 2022-05-09 오후 12 03 27" src="https://user-images.githubusercontent.com/86935775/167333587-7ff21ffb-256b-45cd-93bb-7b0c1b1e4a4d.png">

![May-09-2022 12-04-33](https://user-images.githubusercontent.com/86935775/167333709-8861c1c9-cbb4-4300-9a4c-1bc162f86c04.gif)

<img width="1284" alt="스크린샷 2022-05-09 오후 12 04 50" src="https://user-images.githubusercontent.com/86935775/167333711-6a32b431-e37f-44d0-b619-8b4c7971bbd3.png">



# Notice - 실시간 알림 어플리케이션

## 소개
- 앱 사용자층에 변경사항을 빠르게 적용 가능
- A/B 테스트를 실행하여 앱 개선
- 사용자에게 알림을 보내는 어플리케이션

## 활용기술
- StoryBoard
- Firebase Remote Config
- Firebase A/B Testing

## 동작화면
<img width="470" alt="image" src="https://user-images.githubusercontent.com/86935775/167334274-dcae22bd-f3fd-4f29-ab31-ddfa1f16b186.png">
<img width="961" alt="image" src="https://user-images.githubusercontent.com/86935775/167334438-bd8ef723-62ea-4188-b93a-2ec8db0e6a8a.png">
<img width="970" alt="image" src="https://user-images.githubusercontent.com/86935775/167334479-13be3b9e-667f-4c1d-b202-d2b467591751.png">
<img width="974" alt="image" src="https://user-images.githubusercontent.com/86935775/167334515-b6dfb7cb-f11a-4c7d-a372-a8366536ee19.png">
<img width="974" alt="image" src="https://user-images.githubusercontent.com/86935775/167334559-bc31b17d-691c-4dd4-8e0c-c279e58ed8fe.png">



# Drink - 물 마실 시간을 알려주는 알람 앱

## 소개

- 물 마실 시간을 알려주는 알람 앱
- DatePicker를 이용해 오전/오후로 나눠진 알람을 설정할 수 있다
- 설정한 알람을 삭제할 수 있다

## 활용기술

- StoryBoard
- Local Notification
- UNNotificationRequest
 - identifier
 - UNMutableNotificationContent
 - UNCalendarNotificationTrigger

## 동작화면
![1](https://user-images.githubusercontent.com/86935775/167336047-9e6b7424-15fc-408f-9443-107e0c6fd386.gif)
![2](https://user-images.githubusercontent.com/86935775/167336057-aeb2706e-b0f9-4381-908b-ba9aaff3d4af.gif)
![May-09-2022 12-31-07](https://user-images.githubusercontent.com/86935775/167336075-6311019d-a0de-4117-8de2-b86d619e009b.gif)


# Netfilx - Netflix Style 영화 추천 어플리케이션

## 소개

- Netflix Style의 영화 추천 어플리케이션

## 활용기술

- Compositional Layout
- SwiftUI (Preview와 상세화면이 SwiftUI로 구현됨)
- SnapKit (UI 구현 보조 라이브러리)

## 동작화면
![May-09-2022 12-37-39](https://user-images.githubusercontent.com/86935775/167336518-566819fe-4796-4f89-b255-fee18d1983f7.gif)
<img width="1326" alt="image" src="https://user-images.githubusercontent.com/86935775/167336630-67cb0e06-bc42-4c11-ba8d-122daeb3885d.png">


# Brewary - 맥주 추천 어플리케이션


## 소개

- PunkAPI를 통해 받은 Data를 Fetching하여 화면에 TableView로 표시
- TableView의 각 Cell을 Click하면 각 맥주의 상세정보를 표시하는 DetailView 화면으로 이동

## 활용기술

- URLSession
- SnapKit (UI 구현 보조 라이브러리)
- Kingfisher (이미지 처리 라이브러리)

## 동작화면
![May-09-2022 12-44-51](https://user-images.githubusercontent.com/86935775/167337176-197ac1ff-a7b3-49a4-9747-1ed068353470.gif)


