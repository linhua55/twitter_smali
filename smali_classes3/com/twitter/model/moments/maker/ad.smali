.class public abstract Lcom/twitter/model/moments/maker/ad;
.super Lcom/twitter/model/moments/maker/ap;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/moments/maker/ac;",
        "B:",
        "Lcom/twitter/model/moments/maker/ad",
        "<TT;TB;>;>",
        "Lcom/twitter/model/moments/maker/ap",
        "<TT;TB;>;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/moments/maker/aj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/aj;)Lcom/twitter/model/moments/maker/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/maker/aj;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/model/moments/maker/ad;->a:Lcom/twitter/model/moments/maker/aj;

    .line 52
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/ad;

    return-object v0
.end method
