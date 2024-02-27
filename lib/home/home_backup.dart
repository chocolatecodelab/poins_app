  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('POINS'),
  //         backgroundColor: Colors
  //             .transparent, // Membuat latar belakang AppBar menjadi transparan
  //         flexibleSpace: Container(
  //           decoration: BoxDecoration(
  //             gradient: AppColors.primaryGradient(),
  //           ),
  //         ),
  //         bottom: PreferredSize(
  //           preferredSize:
  //               const Size.fromHeight(50.0), // Tinggi baris yang diinginkan
  //           child: Container(
  //             margin: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
  //             alignment: Alignment.center,
  //             color: Colors.transparent, // Warna latar belakang baris
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: <Widget>[
  //                 Expanded(
  //                     child: TextField(
  //                   decoration: InputDecoration(
  //                     focusedBorder: OutlineInputBorder(
  //                       // Mengatur border saat dalam keadaan fokus
  //                       borderRadius: BorderRadius.circular(
  //                           10.0), // Mengatur border berbentuk bulat
  //                       borderSide: const BorderSide(
  //                           color: AppColors
  //                               .primaryColor), // Mengatur warna border menjadi biru saat dalam keadaan fokus
  //                     ),
  //                     contentPadding: const EdgeInsets.symmetric(
  //                         vertical: 3, horizontal: 3),
  //                     filled: true, // Mengisi latar belakang TextField
  //                     fillColor: Colors.white, // Warna latar belakang putih
  //                     hintText: "Cari di Poins",
  //                     hintStyle: TextStyle(fontFamily: poppinsFontFamily),
  //                     border: OutlineInputBorder(
  //                       borderSide: BorderSide.none,
  //                       // Mengatur border TextField
  //                       borderRadius: BorderRadius.circular(
  //                           14.0), // Mengatur border berbentuk bulat
  //                     ),
  //                     prefixIcon: IconButton(
  //                       icon: const Icon(Icons.search),
  //                       color: AppColors.darkGrey,
  //                       onPressed: () {
  //                         // Aksi yang akan dilakukan ketika tombol pencarian ditekan
  //                         // Misalnya, Anda bisa menambahkan logika pencarian di sini
  //                       },
  //                     ),
  //                   ),
  //                 )),
  //                 IconButton(
  //                   icon: const Icon(Icons.notifications),
  //                   color: Colors.white, // Ikon yang ingin ditampilkan
  //                   iconSize: 30,
  //                   onPressed: () {
  //                     // Aksi yang akan dilakukan ketika tombol ditekan
  //                     // Misalnya, aksi pencarian
  //                   },
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }