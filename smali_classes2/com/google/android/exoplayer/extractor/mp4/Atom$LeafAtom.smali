.class final Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
.super Lcom/google/android/exoplayer/extractor/mp4/Atom;
.source "Twttr"


# instance fields
.field public final data:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;-><init>(I)V

    .line 161
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 162
    return-void
.end method
