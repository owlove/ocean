import 'package:flutter/material.dart';
import 'package:ocean_app/fish_description.dart';

// Класс для создания объектов (рыб) для листвью и страницы с описанием
class Fish {
  final String name;
  final String description;
  final String imageUrl;
  final String fullDescription;

  const Fish({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.fullDescription,
  });
}

// Список рыб с их описанием
List<Fish> fishList = [
  const Fish(
    name: "Пиранья",
    description: "Семейство пираньевых",
    imageUrl: "assets/images/1.jpg",
    fullDescription: "Пиранья - это вид пресноводной рыбы, известный своими острыми зубами и хищническим поведением. Они обладают серебристым телом, красными плавниками и мощными челюстями. Пираньи известны своей агрессивностью и часто живут в больших стаи, где они охотятся на мелких рыб и даже плотоядных млекопитающих.",
  ),
  const Fish(
    name: "Рыба-клоун",
    description: "Семейство помацентровых",
    imageUrl: "assets/images/2.jpg",
    fullDescription: "Клоунская рыба, также известная как \"Немо\", это маленькая рыбка c яркими цветами и полосатым узором. Она обладает способностью к общению c анемонами, где они обитают и находят защиту. Клоунские рыбы мирные и игривые, часто становясь любимыми обитателями аквариумов.",
  ),
  const Fish(
    name: "Сом из рода Каллихтис",
    description: "Семейство пресноводных",
    imageUrl: "assets/images/3.jpg",
    fullDescription: "Сом из рода Каллихтис - это маленькая пресноводная рыбка, которая обычно имеет узкие полосы и живописные узоры на своем теле. Они предпочитают жить в темных местах и активны ночью. Каждый сомик из рода Каллихтис имеет уникальные черты и характер, делая их интересными для наблюдения в аквариуме.",
  ),
  const Fish(
    name: "Красный океанский окунь",
    description: "Семейство скорпеновых",
    imageUrl: "assets/images/4.jpg",
    fullDescription: "Красный океанский окунь - это великолепная и заметная рыба c красноватым телом и длинными плавниками. Она является хищником и может быть опасной для своих соседей в аквариуме. Красные океанские окуньи обычно обитают в коралловых рифах и предпочитают питаться мелкой рыбой и креветками.",
  ),
  const Fish(
    name: "Гуппи",
    description: "Семейство пецилиевых",
    imageUrl: "assets/images/5.jpg",
    fullDescription: "Гуппи - это маленькая и раскрашенная пресноводная рыбка. Они обладают яркими окрасками, включая различные оттенки красного, синего, зеленого и желтого. Гуппи легко размножаются и популярны среди аквариумистов как красивая и неприхотливая рыба.",
  ),
  const Fish(
    name: "Мандаринка",
    description: "Семейство лировых",
    imageUrl: "assets/images/6.jpg",
    fullDescription: "Мандаринка - это небольшая тропическая рыба c яркими и сложными узорами на своем теле. Их яркие цвета включают оранжевые, голубые, зеленые и желтые оттенки. Мандаринки ведут скрытный образ жизни и предпочитают жить в богато украшенных рифовых экосистемах. Они славятся своей красотой и часто считаются одной из самых желанных рыб для аквариумов.",
  ),
  const Fish(
    name: "Скалярия",
    description: "Семейство цихловых",
    imageUrl: "assets/images/7.jpg",
    fullDescription: "Скалярия, также известная как ангельская рыба, имеет вытянутое и плоское тело c длинными анальными и дорсальными плавниками. Скалярии обладают разнообразием окрасок, включая черный, белый, серый и разные оттенки золота. Они спокойные и легко уживаются c другими рыбами, что делает их популярными среди аквариумистов.",
  ),
  const Fish(
    name: "Манта",
    description: "Семейство орляковых",
    imageUrl: "assets/images/8.jpg",
    fullDescription: "Манта - это крупная и изящная морская рыба, которая принадлежит к семейству скатов. Она имеет плоское тело, покрытое гладкой кожей и небольшими зубами. Манта имеет уникальную форму крыльев, которые напоминают орлячьи крылья, и плавники, представляющие собой длинные хвостики. Они отличаются большим размером, средний вес манты составляет около 1350 кг, а ширина их крыльев может достигать до 7 метров. Манты очень мирные и неагрессивные существа, которые редко представляют опасность для человека.",
  ),
  const Fish(
    name: "Рыба-хирург",
    description: "Семейство хирурговых",
    imageUrl: "assets/images/9.jpg",
    fullDescription: "Рыба-хирург, также известная как хирургский скалярий, имеет яркий окрас тела и выделяется острым гребнем на хвосте, напоминающим хирургический инструмент.  Они обитают в тропических морских водах и могут быть найдены вокруг коралловых рифов. Их хвостовой острие может использоваться для самозащиты и обороны, а также для устрашения хищников. Рыба-хирургы являются популярными обитателями аквариумов благодаря своему привлекательному внешнему виду и активной натуре.",
  ),
  const Fish(
    name: "Королевская грамма",
    description: "Семейство грамматовых",
    imageUrl: "assets/images/10.jpg",
    fullDescription: "Королевская грамма - это яркая рыба c фиолетовым и желтым телом, окаймленным синими и розовыми отметинами. Они обитают в тропических морях и славятся своей величественностью и изящностью. Королевские граммы являются сравнительно мирными рыбами, но могут стать агрессивными, особенно в отношении собственного вида.",
  ),
  const Fish(
    name: "Меч-рыба",
    description: "Семейство мечерылых",
    imageUrl: "assets/images/11.jpg",
    fullDescription: "Меч-рыба - это быстрая и стройная морская рыба, у которой существует вытянутое тело с острым мечевидным клювом на передней части головы. Эти создания используют свои длинные мечевидные клювы для охоты на добычу, прыгая из воды или пробиваясь сквозь рой рыб. Они могут достигать впечатляющей скорости, взмывая над водной поверхностью.",
  ),
  const Fish(
    name: "Акула-молот",
    description: "Семейство хрящевых",
    imageUrl: "assets/images/12.jpg",
    fullDescription: "Акула-молот - это узнаваемая морская рыба с необычной головой, имеющей форму двух расширений, напоминающих молот. Являются хищниками и активными охотниками, питающимися главным образом рыбой, скатами и кальмарами. У них развитый обоняние и чувство слуха, что помогает им находить добычу.",
  ),
  const Fish(
    name: "Рыба-солнце",
    description: "Семейство лучеперых",
    imageUrl: "assets/images/13.jpg",
    fullDescription: "Рыба-солнце, также известная как опасный хахалон или рыба-луна, является уникальным обитателем моря. Они имеют круглое, сжатое боками тело с яркими и ослепительными окрасками. Является пассивным планктоноядным животным, питающимся главным образом кишечнополостными животными и другими мелкими морскими организмами. Рыбы-солнца являются великолепными и красивыми созданиями, и их встреча считается важным и особым событием для любителей подводного мира.",
  ),
  const Fish(
    name: "Дельфин Коммерсона",
    description: "Семейство дельфиновых",
    imageUrl: "assets/images/14.jpg",
    fullDescription: "Дельфин Коммерсона назван в честь Филибера Коммерсона, который впервые описал этих животных в 1767 году. Эти дельфины имеют очень отличительную форму тела. У них чёрная голова, белое горло и тело, а также присутствует спинной плавник. Границы между двумя цветами проявляются очень чётко. Они очень активные животные. Их очень часто видели быстро плывущими на поверхности и выпрыгивающими из воды. Они также очень известны своим плаванием «вверх-вниз», которое помогает им лучше выслеживать свою добычу.",
  ),
  const Fish(
    name: "Мурена",
    description: "Семейство муреновых",
    imageUrl: "assets/images/15.jpg",
    fullDescription: "Мурены имеют тело змеевидной формы с голой кожей без чешуи. Разнообразная окраска мурен позволяет им маскироваться. Грубое обращение с этой рыбой влечет за собой болезненные последствия.",
  ),
  const Fish(
    name: "Латимерия",
    description: "Семейство латимериевых",
    imageUrl: "assets/images/16.jpg",
    fullDescription: "Латимерия являющихся «живыми ископаемыми» — доисторическими существами, дожившими до наших дней. Латимерия является формой рыб, живших 400 мл. лет назад. Это крупные и медлительные рыбы. Являются хищниками. Дожили до наших дней во многом потому, что живут и охотятся на больших глубинах (700 м и выше), где с ними не конкурируют более быстрые рыбы.",
  ),
  const Fish(
    name: "Змееголов",
    description: "Семейство змееголовых",
    imageUrl: "assets/images/17.jpg",
    fullDescription: "Змееголов - одна из самых необычных пресноводных рыб, свое название она получила по причине невероятного сходства с рептилиями. Рыба с головой змеи родом из Южной и Центральной Азии. Змееголов невероятно силен и очень красив.",
  ),
  const Fish(
    name: "Аравана",
    description: "Семейство аравановых",
    imageUrl: "assets/images/18.jpg",
    fullDescription: "Аравана представитель одного из древнейших семейств рыб, сохранившихся с Юрского периода (150 миллионов лет). х можно гладить, кормить с рук, они привыкают к своему хозяину. В то же время, они очень агрессивны к своим сородичам и могут с легкостью проглотить рыбку поменьше размером.",
  ),
  const Fish(
    name: "Чёрная ножетелка",
    description: "Семейство аптеронотовых",
    imageUrl: "assets/images/19.jpg",
    fullDescription: "Черная ножетелка или черный нож является преимущественно одиночным морским хищником. Вся рыба чёрная, за исключением двух белых колец возле хвостового плавника и светлого пятна на носу, который иногда может переходить в полосу на спине. Обладают электрическим органом, который используется для поиска еды и отпугивания врагов. Своим внешним видом напоминает форму ножа, откуда и появилось ее название.",
  ),
  const Fish(
    name: "Белуга",
    description: "Семейство осетровых",
    imageUrl: "assets/images/20.jpg",
    fullDescription: "Блуга считается одной из самых крупных пресноводных рыб, отдельные экземпляры которой достигают веса до полутора тонн. Это долгоживущая рыба, достигающая возраста 100 лет. Издавно считается королевской рыбой. Из-за своей популярности среди рыболовов, на данный момент находится в красной книге.",
  ),
];

// страница со списком рыб и ссылкой на новую страницу описания этих рыб
class pageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromRGBO(0, 92, 157, 1),
        appBar: AppBar(
          title: Text(
            "Обитатели аквариумов",
            style: TextStyle(
              color: Color.fromRGBO(182, 217, 239, 1),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 92, 157, 1),
        ),
        body: ListView.builder(
          itemCount: fishList.length,
          itemBuilder: (context, index) {
            Fish fish = fishList[index];

            return Card(
              color: Color.fromRGBO(105, 181, 231, 1),
              child: ListTile(
                title: Text(
                  fish.name,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 92, 157, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  fish.description,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 92, 157, 1),
                    fontSize: 15,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FishDetails(fish),
                    ),
                  );
                },
              ),
            );
          },
        ),
      );
}