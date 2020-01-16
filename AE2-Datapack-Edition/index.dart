// import the core of the framework:
import 'package:objd/core.dart';
import 'package:objd_crafting/objd_crafting.dart';

void main(List<String> args) {
  createProject(
    Project(
      name: 'Applied Energistics 2',
      target: "../",             // path for where to generate the project
      generate: AppliedEnergistics2()
    ),
    args
  );
}

class AppliedEnergistics2 extends Widget{
	@override
	Widget generate(Context context){
		return Pack(
			name:"appliedenergistics2",
			main: File('main'),
			child: CertusQuartzCrystalGive(),
			files: [
				File.execute(
					'items/certus_quartz_crystal/give',
					pack: 'ae2_certus_quartz_crystal',
					child: Give(Entity.Selected(),
						item: Item(
							ItemType.iron_ingot,
							count: 1,
							name: TextComponent("Certus Quartz Crystal", italic: false),
							model: 167385
						)
					)
				),
				File.execute(
					'items/certus_quartz_shovel/give',
					pack: 'ae2_certus_quartz_shovel',
					child: Give(Entity.Selected(),
						item: Item(
							ItemType.iron_shovel,
							count: 1,
							name: TextComponent("Certus Quartz Shovel", italic: false),
							model: 167386
						)
					)
				)
			]
		);
	}
}

class CertusQuartzCrystalGive {
}