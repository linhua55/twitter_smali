.class Ltv/periscope/android/graphics/m;
.super Ltv/periscope/android/graphics/c;
.source "Twttr"


# instance fields
.field final synthetic j:Ltv/periscope/android/graphics/GLRenderView;


# direct methods
.method public constructor <init>(Ltv/periscope/android/graphics/GLRenderView;Z)V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 870
    iput-object p1, p0, Ltv/periscope/android/graphics/m;->j:Ltv/periscope/android/graphics/GLRenderView;

    .line 871
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Ltv/periscope/android/graphics/c;-><init>(Ltv/periscope/android/graphics/GLRenderView;IIIIII)V

    .line 872
    return-void

    :cond_0
    move v6, v5

    .line 871
    goto :goto_0
.end method
