# spotify_clone_app için Copilot Talimatları

## Proje Genel Bakış

- Bu proje, Flutter tabanlı bir Spotify klon uygulamasıdır ve çoklu platform (iOS, Android, Web, Masaüstü) desteğiyle yapılandırılmıştır.
- Ana uygulama kodları `lib/` klasöründedir. `presentation/` arayüz, `core/` yapılandırmalar, `common/` ise ortak yardımcılar ve widget'lar içindir.
- Varlık (asset) yönetimi `assets/` klasöründe (fontlar, görseller, vektörler) merkezileştirilmiştir.

## Temel Mimarî Desenler

- **Arayüz Katmanı:** Tüm ekranlar/sayfalar `lib/presentation/` altında, özelliğe göre gruplanmıştır (örn. `auth/pages/`).
- **Widget'lar:** Tekrar kullanılabilir widget'lar `lib/common/widgets/` dizinindedir.
- **Tema & Varlıklar:** Renkler, vektörler ve tema ayarları `lib/core/configs/` altındadır.
- **Yardımcılar:** Yardımcı fonksiyonlar (örn. karanlık mod tespiti) `lib/common/helpers/` dizinindedir.
- **Navigasyon:** Sayfa geçişleri için Flutter'ın `Navigator` yapısı kullanılır (UI kodundaki `onTap` örneklerine bakınız).

## Geliştirici İş Akışları

- **Derleme:**
  - Standart Flutter komutları geçerlidir: `flutter run`, `flutter build <platform>`
  - iOS için: Bağımlılıklar değişirse `ios/` klasöründe `pod install` çalıştırın.
- **Test:**
  - Widget testleri `test/` klasöründedir. `flutter test` ile çalıştırılır.
- **Varlıklar:**
  - Yeni varlık eklerken `assets/` klasörüne ekleyin ve `pubspec.yaml` dosyasını güncelleyin.
- **Hot Reload:**
  - Geliştirme sırasında `flutter run` ile çalıştırıp dosyayı kaydederek hot reload kullanın.

## Projeye Özel Kurallar

- **Dosya İsimlendirme:** Dosya ve klasörlerde snake_case kullanın.
- **Widget Yapısı:** State gerekmiyorsa StatelessWidget tercih edin.
- **Tema:** Renk ve stil için daima `AppColors` ve `Theme.of(context)` kullanın.
- **SVG:** Vektör varlıklar için `flutter_svg` kullanın (`SvgPicture.asset` örneğine bakınız).
- **Karanlık Mod:** Tema mantığı için özel yardımcıdan `context.isDarkMode` kullanın.
- **Navigasyon:** Sayfa geçişlerinde `MaterialPageRoute` kullanın.

## Entegrasyon Noktaları

- **Harici Paketler:**
  - SVG gösterimi için `flutter_svg`
  - Özel fontlar (Satoshi) `assets/fonts/` altında
- **Platform Entegrasyonu:**
  - iOS/Android ayarları `ios/` ve `android/` klasörlerinde

## Örnekler

- Yeni bir sayfa eklemek için: `lib/presentation/<feature>/pages/` altında bir Dart dosyası oluşturun, bir `StatelessWidget` tanımlayın ve `Navigator.push` ile yönlendirme ekleyin.
- Yeni bir varlık eklemek için: Dosyayı `assets/` klasörüne koyun, ardından `pubspec.yaml` dosyasında `assets:` altında tanımlayın.

## Referanslar

- Ana giriş: `lib/main.dart`
- Örnek arayüz: `lib/presentation/auth/pages/register.dart`
- Tema: `lib/core/configs/theme/app_colors.dart`
- Vektörler: `lib/core/configs/assets/app_vectors.dart`

---

Yeni mimarî desenler, iş akışları veya kurallar eklerseniz bu dosyayı güncelleyiniz.
