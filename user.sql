-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Apr 2025 pada 03.07
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'bila ', '$2y$10$YlDiHXJtieEDs5TBszWfKOEzmjC7LS8KXNv7ysgKp2I3bTOKsaFmG'),
(2, 'bila ', '$2y$10$yTIS4TFWBghU1.RpG6cBJOoM85CThRBc4DgihdPwKnIXc3mZpLxky'),
(3, 'agus', '$2y$10$jZDktvumzFI/2GV32QgPGOvqM3aKmA3MmhHMpTfvt05LLBU1iPXiK'),
(4, 'faith', '$2y$10$iOUwnQSdrVauykPUeFy5Yu8fRtc16XfvkLDBwRhGeyK8hRqYmE.SG'),
(5, 'nbila7674@gmail.com', '$2y$10$YeRRRvjtNcehrvnagftr5exveq02XLMXZwyl0k4UGxx2.mLzelOpy'),
(6, 'moon', '$2y$10$Y4zy7qP4dDA4k4lvtMi/ueJC8a80XoTQO2S5Qq6Jcq0Sj/7R95Xha'),
(7, 'gea', '$2y$10$CTr6rRTUz8cpecJBc/wdu.VaTPJFBnuvYnD8WIfMIBnSZ5fMoGlGO'),
(8, 'fhit', '$2y$10$T19k9VWilGscKpjj5ntj/uZVNSxUrcy9aloq/yRHWahiTS7j2/Wf.'),
(9, 'bil', '$2y$10$pD38XDDt8s1Tdbgr6lEtqO5Uy7pACRMzR6K7aTvd8Tq.rBptGedeq'),
(10, 'yuh', '$2y$10$iSj1eJizq8l4hTrbyI.ftO7ni8EkfNKWjbFkIKYlULbip.JSsymr.'),
(11, 'yy', '$2y$10$CWqbibsxk3FvP7jVwpnTruATCXfBKsGBhkos1cT0TJ4E9T9yQdEXW'),
(12, 'w', '$2y$10$/6WiD1eSOCc3nj0Smma7Pe0DxBHMMrt.daQEfq197EpRNfjFAl6Mi'),
(13, 'w', '$2y$10$Bl1dTskysnNJYywoj7fdzeyfTIg.ixx8wg0yndbjqELqkrFpwKLzS');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
