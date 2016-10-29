.class public Ltv/periscope/android/api/service/highlights/PsHighlightChunkId3Tag;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public clockwiseRotation:I
    .annotation runtime Lnu;
        a = "clockwise_rotation"
    .end annotation
.end field

.field public timestampOffset:F
    .annotation runtime Lnu;
        a = "timestamp_offset"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ldnx;
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Ldnx;->c()Ldny;

    move-result-object v0

    iget v1, p0, Ltv/periscope/android/api/service/highlights/PsHighlightChunkId3Tag;->clockwiseRotation:I

    .line 16
    invoke-virtual {v0, v1}, Ldny;->a(I)Ldny;

    move-result-object v0

    iget v1, p0, Ltv/periscope/android/api/service/highlights/PsHighlightChunkId3Tag;->timestampOffset:F

    .line 17
    invoke-virtual {v0, v1}, Ldny;->a(F)Ldny;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ldny;->a()Ldnx;

    move-result-object v0

    return-object v0
.end method
