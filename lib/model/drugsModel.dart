// ignore: file_names
import 'dart:ui';

class DrugsModel {
  String? unit;
  String? image;
  String? title;
  Color? bgColor;
  Color? titleColor;

  DrugsModel(this.unit, this.image, this.title, this.bgColor, this.titleColor);
}

List<DrugsModel> druglist = [
  DrugsModel(
      "Alloted: 12 units",
      "https://s3-alpha-sig.figma.com/img/531e/f984/9fa0dff896ee128bdf10c71c9b68f0c8?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Wlzzx8dEZQZi5ng7vpBgrF7Lsa8epMJZTL96QQSQmDlDAl~JzWEnkuKAZEEnpk8MHWQee34xPZMDZEPVi03RzwOzTfM1rG~woqzP-u8Qfhn6M7CfcT-c2X57JP5NbElSkYmF4mnq~LzLR2frp661PqnnqKZ0J~h~k~G2olYFBuFMsbMBKVvC-dT7tXkDp6B364wzHZsfTvELZ03v86xueOthVD44O~QRVzKIwGEhNGtBxPZbVQxMhNzCvjvaH13e9ROMSwNTimXQ8u8cfqJ4qCzCPBT9ydR7L19QeFxgmwpKSEYkBvS2rlAqnAQ8znZdo9DVg2ScIZQyG8WKtwRHEw__",
      "Revital Cal 500mg Strip Of 15 Tablets",
      const Color(0xffFFE9E9),
      const Color(0xfff8c5c5)),
  DrugsModel(
      "Alloted: 12 units",
      "https://s3-alpha-sig.figma.com/img/de6e/635d/bdbde5d9e0def2f77e73011a9b8034f4?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RuAzoVPpS9bWNXf7XfLXYlUbLUUjZF1VKaapVxXNgq3l8QBrKQzmz2Nzb4QNYlJ2pXFGN6KDz-A0xlWZYBHWEgFgLX0IoULGPDRVmVAzOcr94DrHUQMw3CbnAvJ4g3rSyeKUHIMyVh93ax~KitvjMpVUEtoWlQa8deFi6yvmluZsJ6h7Q4VdYDcWiyr0XteoMW1d52PLS~rkVA0y7C9m0x6ZlYcUeFh1Szok03t5x7IgIMJiRTpRGegbH1hv3AbUsWhpPe6ZvAQjIxcwgiC7CbbgvGfLW3uA9SlcYNd8gdVNuF3L8ZOzOPA~-~qBWxpzs3KCkrH~8uo~w6V8u1GRDQ__",
      "Recombigen Dr. ORG New 3 In 1 Vaporizer",
      const Color(0xffFFF3D0),
      const Color(0xfffde49a)),
  DrugsModel(
      "Alloted: 12 units",
      "https://s3-alpha-sig.figma.com/img/41f6/1812/219b3e6fa6d02c306b1e6dd122bb75c7?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H6U1Ctx3IVBIIjpL7IvYne4cVoQDZZ3RCcvVZyJ-ytiNydnYwDO6nac8jqkx1bLliPDqXwAcoWyN0k4-5GVFfgOT4wji2w~mvye56FZLYTK8TeC0MKMsL6~Ji05~ELrod4enFq~k9pJjAFckkrgjV4vRojUKN8GW9-y0sGh8uh~5LfO1W90VR4dp-2OLlLZTJI2KuGCGGrObU1s3Cc8Eab~ktNwsstytFaFVAeEdbQ1FW~A44Bqu5QMq7~qB2J6TYh3fT1m6CEVubYyGmC70wz-ZmE-46XrELY7oq8LUA1rWawyJAXc44RAcD8wU~gABRMjXAxFHaMcPgwr6jJX-EQ__",
      "Dr. Morepen Blood Pressure Monitor Model Bp 14",
      const Color(0xffD9F6FF),
      const Color(0xff8fe0f9)),
  DrugsModel(
      "Alloted: 12 units",
      "https://s3-alpha-sig.figma.com/img/84d0/7bc4/6c3212b7c4dbdd71d29eeb0ba1cf8ef7?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nBue5hAMilcShYdMv7hJrhBFUxFtt8S8ffnZFmYSdVovG82gwegikvibBCdZBYaht2lJeQakNmXJashk7-OdHSGSpxZjStmUrbpk6Yw8w8zETGvO13XjpuNkd3zBSlQl1P8Z5ssCYPbgKmykBZxSzlBCJ2wvfDzw2vWiDaKQop8JyQAaZaI~V8FAXeygi63dy9Dx9X1W8140~hH1L0NSHG9TBZyEVNk2XZDhsteSQHSojV~-6U9A-ihPdRwRNYvF1twvMDTVJim9w~L4UIrmasWaGzgFcRxkW4w963BNpCGY8mofE7Ieggj1daV26HAtglanZ12tI3zQJuTnA5CAYQ__",
      "Revital Cal 500mg Strip Of 15 Tablets",
      const Color(0xffDAF7DF),
      const Color(0xff9ef6ad)),
  DrugsModel(
      "Alloted: 12 units",
      "https://s3-alpha-sig.figma.com/img/531e/f984/9fa0dff896ee128bdf10c71c9b68f0c8?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Wlzzx8dEZQZi5ng7vpBgrF7Lsa8epMJZTL96QQSQmDlDAl~JzWEnkuKAZEEnpk8MHWQee34xPZMDZEPVi03RzwOzTfM1rG~woqzP-u8Qfhn6M7CfcT-c2X57JP5NbElSkYmF4mnq~LzLR2frp661PqnnqKZ0J~h~k~G2olYFBuFMsbMBKVvC-dT7tXkDp6B364wzHZsfTvELZ03v86xueOthVD44O~QRVzKIwGEhNGtBxPZbVQxMhNzCvjvaH13e9ROMSwNTimXQ8u8cfqJ4qCzCPBT9ydR7L19QeFxgmwpKSEYkBvS2rlAqnAQ8znZdo9DVg2ScIZQyG8WKtwRHEw__",
      "Revital Cal 500mg Strip Of 15 Tablets",
      const Color(0xffFFE9E9),
      const Color(0xfff8c5c5)),
  DrugsModel(
      "Alloted: 12 units",
      "https://s3-alpha-sig.figma.com/img/de6e/635d/bdbde5d9e0def2f77e73011a9b8034f4?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RuAzoVPpS9bWNXf7XfLXYlUbLUUjZF1VKaapVxXNgq3l8QBrKQzmz2Nzb4QNYlJ2pXFGN6KDz-A0xlWZYBHWEgFgLX0IoULGPDRVmVAzOcr94DrHUQMw3CbnAvJ4g3rSyeKUHIMyVh93ax~KitvjMpVUEtoWlQa8deFi6yvmluZsJ6h7Q4VdYDcWiyr0XteoMW1d52PLS~rkVA0y7C9m0x6ZlYcUeFh1Szok03t5x7IgIMJiRTpRGegbH1hv3AbUsWhpPe6ZvAQjIxcwgiC7CbbgvGfLW3uA9SlcYNd8gdVNuF3L8ZOzOPA~-~qBWxpzs3KCkrH~8uo~w6V8u1GRDQ__",
      "Recombigen Dr. ORG New 3 In 1 Vaporizer",
      const Color(0xffFFF3D0),
      const Color(0xfffde49a)),
  DrugsModel(
      "Alloted: 12 units",
      "https://s3-alpha-sig.figma.com/img/41f6/1812/219b3e6fa6d02c306b1e6dd122bb75c7?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H6U1Ctx3IVBIIjpL7IvYne4cVoQDZZ3RCcvVZyJ-ytiNydnYwDO6nac8jqkx1bLliPDqXwAcoWyN0k4-5GVFfgOT4wji2w~mvye56FZLYTK8TeC0MKMsL6~Ji05~ELrod4enFq~k9pJjAFckkrgjV4vRojUKN8GW9-y0sGh8uh~5LfO1W90VR4dp-2OLlLZTJI2KuGCGGrObU1s3Cc8Eab~ktNwsstytFaFVAeEdbQ1FW~A44Bqu5QMq7~qB2J6TYh3fT1m6CEVubYyGmC70wz-ZmE-46XrELY7oq8LUA1rWawyJAXc44RAcD8wU~gABRMjXAxFHaMcPgwr6jJX-EQ__",
      "Dr. Morepen Blood Pressure Monitor Model Bp 14",
      const Color(0xffD9F6FF),
      const Color(0xff8fe0f9)),
  DrugsModel(
      "Alloted: 12 units",
      "https://s3-alpha-sig.figma.com/img/84d0/7bc4/6c3212b7c4dbdd71d29eeb0ba1cf8ef7?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nBue5hAMilcShYdMv7hJrhBFUxFtt8S8ffnZFmYSdVovG82gwegikvibBCdZBYaht2lJeQakNmXJashk7-OdHSGSpxZjStmUrbpk6Yw8w8zETGvO13XjpuNkd3zBSlQl1P8Z5ssCYPbgKmykBZxSzlBCJ2wvfDzw2vWiDaKQop8JyQAaZaI~V8FAXeygi63dy9Dx9X1W8140~hH1L0NSHG9TBZyEVNk2XZDhsteSQHSojV~-6U9A-ihPdRwRNYvF1twvMDTVJim9w~L4UIrmasWaGzgFcRxkW4w963BNpCGY8mofE7Ieggj1daV26HAtglanZ12tI3zQJuTnA5CAYQ__",
      "Revital Cal 500mg Strip Of 15 Tablets",
      const Color(0xffDAF7DF),
      const Color(0xff9ef6ad)),
];
