<!DOCTYPE html>
<html lang="en">
<head>
  <?php echo vieW('situs/bagianhead') ?>
</head>
<body>
  <?php echo view('situs/bagianheader') ?>
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container" data-aos="fade-in">
      <h1>Welcome to Material</h1>
      <h2>We are team of talented designers making websites with Bootstrap</h2>
      <div class="d-flex align-items-center">
        <i class="bx bxs-right-arrow-alt get-started-icon"></i>
        <a href="#about" class="btn-get-started scrollto">Get Started</a>
      </div>
    </div>
  </section>
  <main id="main">
    <section id="why-us" class="why-us">
      <div class="container">
        <div class="row">
          <div class="col-xl-4 col-lg-5" data-aos="fade-up">
            <div class="content">
              <h3>Why Choose Material for your company website?</h3>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                Asperiores dolores sed et. Tenetur quia eos. Autem tempore quibusdam vel necessitatibus optio ad corporis.
              </p>
              <div class="text-center">
                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div>
          <div class="col-xl-8 col-lg-7 d-flex">
            <div class="icon-boxes d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-receipt"></i>
                    <h4>Corporis voluptates sit</h4>
                    <p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-cube-alt"></i>
                    <h4>Ullamco laboris ladore pan</h4>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-images"></i>
                    <h4>Labore consequatur</h4>
                    <p>Aut suscipit aut cum nemo deleniti aut omnis. Doloribus ut maiores omnis facere</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="contact" class="contact">
      <div class="container">
        <div class="section-title">
          <h2 data-aos="fade-up">Akses Log In</h2>
          <p data-aos="fade-up">Silahkan akses akun anda sesuai dengan akses log in</p>
        </div>
        <div class="row justify-content-center">
          <div class="col-xl-6 col-lg-4 mt-4" data-aos="fade-up">
            <div class="info-box">
              <i class="bx bx-map"></i>
              <h3>Kantor Kita</h3>
              <p>Bandar, Kec. Bandar, Kabupaten Batang, Jawa Tengah 51254</p>
            </div>
          </div>
          <div class="col-xl-6 col-lg-4 mt-4" data-aos="fade-up" data-aos-delay="200">
            <div class="info-box">
              <i class="bx bx-phone-call"></i>
              <h3>Kontak</h3>
              <p>(0285) 689001</p>
            </div>
          </div>
        </div>
        <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="300">
          <div class="col-xl-9 col-lg-12 mt-4">
            <form action="<?php echo base_url('login') ?>" method="post" role="form">
              <div class="form-row">
                <div class="col-md-6 form-group">
                  <input type="text" name="username" class="form-control" placeholder="Akses Username" required />
                </div>
                <div class="col-md-6 form-group">
                  <input type="password" class="form-control" name="password" placeholder="Akses Password" required />
                </div>
              </div>
              <div class="text-center"><button type="submit" class="btn btn-primary" style="background-color: orange;border-color: orange;">Akses Log In</button></div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </main>
  <?php echo view('situs/bagianfooter') ?>
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
  <?php echo view('situs/bagianscript') ?>
</body>
</html>