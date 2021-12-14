import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';

class ExperiencesSection extends StatelessWidget {
  const ExperiencesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SectionHeaderText(
            icon: Icons.tour,
            title: 'Experiences',
          ),
          const SizedBox(height: 10),
          BlocConsumer<ExperienceCubit, ExperienceState>(
            listener: (context, state) {
              if (state.status.isInitial) {
                context.read<ExperienceCubit>().getExperiences();
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: state.experiences?.map((e) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: WorkTile(
                          imageSrc: e.imageSrc!,
                          position: e.position!,
                          timeDesc: e.timeDesc!,
                          title: e.title!,
                          additionalDesc: e.additionalDesc,
                        ),
                      );
                    }).toList() ??
                    [],
              );
            },
          ),
        ],
      ),
    );
  }
}
