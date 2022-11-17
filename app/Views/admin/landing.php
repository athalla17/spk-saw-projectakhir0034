<!DOCTYPE html>
<html>
<head>
    <?php echo view('admin/bagianhead') ?>
</head>
<body class="">
    <div id="wrapper">
       <?php echo view('admin/bagiannavigasi') ?>
        <div id="page-wrapper" class="gray-bg">
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-sm-4">
                    <h2>Statistik Data Sistem</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo base_url('') ?>">Beranda</a>
                        </li>
                        <li class="breadcrumb-item active">
                            <strong>Aktif</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-sm-8">
                    <div class="title-action">
                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">Tambah Data Baru</button>
                    </div>
                </div>
            </div>
            <div class="wrapper wrapper-content">
            </div>
            <?php echo view('admin/bagianfooter') ?>
        </div>
    </div>
    <?php echo view('admin/bagianscript') ?>
</body>
<div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content animated bounceInRight">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <strong style="font-size: 13pt;">Tambah Data Baru</strong><br>
                input detail data seusai dengan inputan form, lalu pilih <strong>Simpan Data</strong>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white btn-sm" data-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan Data</button>
            </div>
        </div>
    </div>
</div>
</html>