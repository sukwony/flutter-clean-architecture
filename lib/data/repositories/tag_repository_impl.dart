import '../../usecases/core/entities/brand.dart';
import '../../usecases/core/entities/item.dart';
import '../../usecases/core/entities/page.dart';
import '../../usecases/tag/repository.dart';

class TagRepositoryImpl extends TagRepository {
  @override
  Future<Page<Item>> getItemPageByTagId({
    required String tagId, required String after, required int first
  }) {
    return Future.value(
      const Page(
        cursor: '',
        hasNextPage: false,
        items: [
          Item(
            name: '[피클샵] 크로우캐년 플랫 플레이트 (5color)',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/drFGsBRcQuyrkiXCoGUMhw',
            price: 1800000,
            brand: Brand(name: '피클샵')
          ),
          Item(
            name: '크립트 오브 더 네크로 댄서 인디 리듬 로그라이크 닌텐도스위치',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/ro_JAyoeQOi6lATskm1PGg',
            price: 6325000,
            brand: Brand(name: '닌텐도')
          ),
          Item(
            name: '[YES24] 혼자만 연애하지 않는 법',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/D2iR59WzTSqbAXm2Zyr2ag',
            price: 1215000,
          ),
          Item(
            name: 'SHEARLING JACKET',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/0Ot2eFdtTsmKb4ZgDKhFIw',
            price: 39500000,
            brand: Brand(name: '동령')
          ),
          Item(
            name: 'Light Purple Lion Printed Silk Elizabeth Bag',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/LtQWsWkpSPGG4UXG1eKFRg',
            price: 21800000,
            brand: Brand(name: '엘리자베스모먼트(Elizabeth Moments)')
          ),
          Item(
            name: '(최종 24900원+사은품)12시간 파워흡수 리얼소프트 기저귀 4팩 외 매직드라이 미스터펭 울트라씬',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/ajD3YBTDRZeck1kyE8BuTQ',
            price: 4490000,
            brand: Brand(name: '슈퍼대디')
          ),
          Item(
            name: '국내매장판  나이키 에어맥스 90 퓨추라 여성 운동화 DM9922-102',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/7k0k2DNzRBe88p_OeD-PXw',
            price: 19604000,
            brand: Brand(name: '나이키')
          ),
          Item(
            name: '쁘띠플로라 3COLOR',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/dWONc5xjTraFHnq8n1ikbw',
            price: 8400000,
            brand: Brand(name: '디자인포도그')
          ),
          Item(
            name: 'SKRUVSTA 스크루브스타 회전의자 - 위사네 화이트',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/iDdRcDS6T3KgcUY234WcCA',
            price: 16900000,
            brand: Brand(name: '이케아')
          ),
          Item(
            name: '나이키(NIKE) 에어포스1 07 에센셜 페이즐리 DH4406-102 - 159,000 | 무신사 스토어',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/fxE_J0TYSUuzaNUAKIZymA',
            price: 15900000,
            brand: Brand(name: '나이키')
          ),
          Item(
            name: '2020#R1',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/9NSA4KcnR5eZt2ed9Bwd0w',
            price: 9500000,
            brand: Brand(name: '심예원')
          ),
          Item(
            name: '나이키 덩크 로우 SE',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/xnM0FeL8R3S29VG5bMDI1Q',
            price: 13900000,
            brand: Brand(name: '나이키')
          ),
          Item(
            name: 'Dances love for me 베개 커버',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/GXyrHLQpQFWjDUZre45qjQ',
            price: 3090000,
            brand: Brand(name: '호크마킴')
          ),
          Item(
            name: '시카플라스트밤 B5+ [100ml]',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/9UnsT-w4SQOOGxwOIMkQjw',
            price: 3700000,
            brand: Brand(name: '라로슈포제')
          ),
          Item(
            name: '이솝 레저렉션 아로마틱 핸드 밤 75ml',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/nikpwc0-RB6_7srMhPvcjg',
            price: 2930000,
            brand: Brand(name: '이솝')
          ),
          Item(
            name: '피지오겔 DMT 수분로션 200ml + DMT 크림 5ml *2 + AI 크림 5ml *2 증정',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/RdMPyGFzT_y5-iBm3dONvg',
            price: 3550000,
            brand: Brand(name: '피지오겔')
          ),
          Item(
            name: '(신세계강남점) 타임딜 시크릿 에센스 45ml 기획세트 - 2/3(금) 출고예정',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/dGShlylRRTGmerVTvYamoA',
            price: 3825000,
            brand: Brand(name: '숨37')
          ),
          Item(
            name: '포켓몬스터 팽이 세트 (포켓몬팽이 2개 + 배틀판)',
            imageUrl: 'https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/dl/23/5/4/5/1/4/0/IVKqw/5427545140_146138030.jpg',
            price: 2900000,
          ),
          Item(
            name: 'Island duvet cover - skyblue / black',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/4JjxCfTxQxaJ2iuo0YLPfA',
            price: 15500000,
            brand: Brand(name: '가타')
          ),
          Item(
            name: '나이키 여성 에어맥스 90 퓨추라 SE DX3280-100',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/BV8JSbh1T4-qo1HUSWx76w',
            price: 17700000,
            brand: Brand(name: '나이키')
          ),
          Item(
            name: '우지개 유기견 유기묘 유기동물 후원 써지컬스틸 스틸 목걸이',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/JbWi8K5aRIysNNfIj-SKxg',
            price: 1500000,
            brand: Brand(name: '우지개')
          ),
          Item(
            name: '키크론 K3 Retro 레트로 무선 기계식 키보드 애플 맥 아이패드 블루투스',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/6Rhim3n7SeKwNPWM6kYKsw',
            price: 11900000,
            brand: Brand(name: '키크론')
          ),
          Item(
            name: '이솝 레저렉션 핸드밤 75ml 아로마틱 이솝 핸드크림',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/qufK2s21TwSIC-0o7V6ihQ',
            price: 3070000,
            brand: Brand(name: '이솝')
          ),
          Item(
            name: '나이키 nike 우먼스 에어 맥스 90 퓨추라 SE - 100',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/4qBvRN05T5aknDr6ujjHfg',
            price: 18600000,
            brand: Brand(name: '나이키')
          ),
          Item(
            name: '키크론 K3 Retro 레트로 무선 기계식 키보드 애플 맥 아이패드 블루투스',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/_mwSIc9BSni0p95rXw-AxA',
            price: 15740000,
            brand: Brand(name: '키크론')
          ),
          Item(
            name: '닌텐도 스위치 Ori The Collection',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/GTLWQywmQTii_LJkFEIIxQ',
            price: 8480000,
            brand: Brand(name: '닌텐도')
          ),
          Item(
            name: '피쓰 팔찌',
            imageUrl: 'https://d2n2sfhqfxaprq.cloudfront.net/pickin/2/1/2/gxbFvG4vQ9OqUxLdaVJqsg',
            price: 2000000,
            brand: Brand(name: '원더링유스')
          ),
        ]
      )
    );
  }
}
