package com.twitter.media.ui.image.config;

/* compiled from: Twttr */
public enum CommonRoundingStrategy implements g {
    NONE {
        public float b(f fVar) {
            return 0.0f;
        }

        public float c(f fVar) {
            return 0.0f;
        }

        public float d(f fVar) {
            return 0.0f;
        }

        public float e(f fVar) {
            return 0.0f;
        }
    },
    ADAPTIVE {
        public float b(f fVar) {
            return CommonRoundingStrategy.g(fVar);
        }

        public float c(f fVar) {
            return CommonRoundingStrategy.g(fVar);
        }

        public float d(f fVar) {
            return CommonRoundingStrategy.g(fVar);
        }

        public float e(f fVar) {
            return CommonRoundingStrategy.g(fVar);
        }
    },
    CIRCLE {
        public float b(f fVar) {
            return CommonRoundingStrategy.h(fVar);
        }

        public float c(f fVar) {
            return CommonRoundingStrategy.h(fVar);
        }

        public float d(f fVar) {
            return CommonRoundingStrategy.h(fVar);
        }

        public float e(f fVar) {
            return CommonRoundingStrategy.h(fVar);
        }
    };
    
    public static int d;
    public static int e;

    static {
        d = 1;
        e = 2;
    }

    private static float g(f fVar) {
        return (h(fVar) / 8.0f) - (fVar.d / 2.0f);
    }

    private static float h(f fVar) {
        return Math.max(fVar.b, fVar.c);
    }
}
