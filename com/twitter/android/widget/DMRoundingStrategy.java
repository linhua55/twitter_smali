package com.twitter.android.widget;

import com.twitter.media.ui.image.config.f;
import com.twitter.media.ui.image.config.g;

/* compiled from: Twttr */
public enum DMRoundingStrategy implements g {
    TOP_LEFT {
        public float b(f fVar) {
            return DMRoundingStrategy.f(fVar);
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
    BOTTOM_LEFT {
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
            return DMRoundingStrategy.f(fVar);
        }
    },
    LEFT {
        public float b(f fVar) {
            return DMRoundingStrategy.f(fVar);
        }

        public float c(f fVar) {
            return 0.0f;
        }

        public float d(f fVar) {
            return 0.0f;
        }

        public float e(f fVar) {
            return DMRoundingStrategy.f(fVar);
        }
    },
    RIGHT {
        public float b(f fVar) {
            return 0.0f;
        }

        public float c(f fVar) {
            return DMRoundingStrategy.f(fVar);
        }

        public float d(f fVar) {
            return DMRoundingStrategy.f(fVar);
        }

        public float e(f fVar) {
            return 0.0f;
        }
    };

    private static float f(f fVar) {
        return Math.max(fVar.b, fVar.c);
    }
}
