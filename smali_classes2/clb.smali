.class public Lclb;
.super Lckn;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckn",
        "<",
        "Lcla;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/twitter/model/core/Tweet;


# direct methods
.method public constructor <init>(Lckm;Lcla;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lckn;-><init>(Lckm;Lcks;)V

    .line 14
    iput-object p3, p0, Lclb;->c:Lcom/twitter/model/core/Tweet;

    .line 15
    return-void
.end method
