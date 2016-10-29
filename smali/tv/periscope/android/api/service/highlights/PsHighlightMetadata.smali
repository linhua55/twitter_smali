.class public Ltv/periscope/android/api/service/highlights/PsHighlightMetadata;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/api/service/highlights/PsHighlightChunk;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "chunks"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ldnz;
    .locals 3

    .prologue
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Ltv/periscope/android/api/service/highlights/PsHighlightMetadata;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    iget-object v0, p0, Ltv/periscope/android/api/service/highlights/PsHighlightMetadata;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/service/highlights/PsHighlightChunk;

    .line 18
    invoke-virtual {v0}, Ltv/periscope/android/api/service/highlights/PsHighlightChunk;->create()Ldnv;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Ldnz;->b()Ldoa;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Ldoa;->a(Ljava/util/List;)Ldoa;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ldoa;->a()Ldnz;

    move-result-object v0

    return-object v0
.end method
