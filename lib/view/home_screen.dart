import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/outfit_view_model.dart';
import '../widget/outfit_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OutfitViewModel(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What should I wear today?',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Funny & chaotic outfit generator',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 24),
          
                    Expanded(
                      child: Consumer<OutfitViewModel>(
                        builder: (context, viewModel, _) {
                          final outfit = viewModel.outfit;
          
                          if (outfit == null) {
                            return const Center(
                              child: Text(
                                'Press the button.\nTrust the chaos.',
                                textAlign: TextAlign.center,
                              ),
                            );
                          }
          
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                OutfitCard(
                                  title: 'Top',
                                  value: outfit.top,
                                ),
                                OutfitCard(
                                  title: 'Bottom',
                                  value: outfit.bottom,
                                ),
                                OutfitCard(
                                  title: 'Shoes',
                                  value: outfit.shoes,
                                ),
                                OutfitCard(
                                  title: 'Extra',
                                  value: outfit.extra,
                                ),
                                OutfitCard(
                                  title: 'Mood',
                                  value: outfit.mood,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
          
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          context
                              .read<OutfitViewModel>()
                              .generateOutfit();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Text(
                          'Generate chaos ✨',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
