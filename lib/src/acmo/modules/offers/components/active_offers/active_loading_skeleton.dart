import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/skeleton_loading.dart' show AcmoCustomSkeleton;

class AcmoActiveSkeletonLoading extends StatelessWidget {
  const AcmoActiveSkeletonLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: const Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 16,
            children: [
              AcmoCustomSkeleton(
                height: 70,
                width: 134,
                borderRadius: 10,
              ),
              Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AcmoCustomSkeleton(
                    height: 14,
                    width: 100,
                    borderRadius: 10,
                  ),
                  AcmoCustomSkeleton(
                    height: 16,
                    width: 40,
                    borderRadius: 10,
                  ),
                  AcmoCustomSkeleton(
                    height: 20,
                    width: 70,
                    borderRadius: 10,
                  ),
                ],
              )
            ],
          ),
          AcmoCustomSkeleton(
            height: 16,
            width: 160,
            borderRadius: 10,
          ),
          AcmoCustomSkeleton(
            height: 22,
            width: double.maxFinite,
            borderRadius: 10,
          ),
          AcmoCustomSkeleton(
            height: 15,
            width: 70,
            borderRadius: 10,
          ),
          AcmoCustomSkeleton(
            height: 1,
            width: double.maxFinite,
            borderRadius: 10,
          ),
          Row(
            spacing: 12,
            children: [
              AcmoCustomSkeleton(
                height: 40,
                width: 40,
                borderRadius: 10,
              ),
              Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AcmoCustomSkeleton(
                    height: 15,
                    width: 200,
                    borderRadius: 10,
                  ),
                  AcmoCustomSkeleton(
                    height: 15,
                    width: 70,
                    borderRadius: 10,
                  ),
                ],
              ),
            ],
          ),
          AcmoCustomSkeleton(
            height: 1,
            width: double.maxFinite,
            borderRadius: 10,
          ),
          AcmoCustomSkeleton(
            height: 36,
            width: double.maxFinite,
            borderRadius: 10,
          ),
          AcmoCustomSkeleton(
            height: 15,
            width: 70,
            borderRadius: 10,
          ),
          AcmoCustomSkeleton(
            height: 1,
            width: double.maxFinite,
            borderRadius: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AcmoCustomSkeleton(
                height: 14,
                width: 130,
                borderRadius: 10,
              ),
              AcmoCustomSkeleton(
                height: 12,
                width: 50,
                borderRadius: 10,
              ),
            ],
          ),
          AcmoCustomSkeleton(
            height: 36,
            width: double.maxFinite,
            borderRadius: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AcmoCustomSkeleton(
                height: 14,
                width: 130,
                borderRadius: 10,
              ),
              AcmoCustomSkeleton(
                height: 12,
                width: 50,
                borderRadius: 10,
              ),
            ],
          ),
          AcmoCustomSkeleton(
            height: 36,
            width: double.maxFinite,
            borderRadius: 10,
          ),
        ],
      ),
    );
  }
}
