.class Lcom/twitter/android/an;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/model/av/o;",
        "Lcom/twitter/android/ao;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/am;


# direct methods
.method constructor <init>(Lcom/twitter/android/am;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/twitter/android/an;->a:Lcom/twitter/android/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/av/o;)Lcom/twitter/android/ao;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/twitter/android/ao;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/ao;-><init>(Lcom/twitter/model/av/o;Z)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    check-cast p1, Lcom/twitter/model/av/o;

    invoke-virtual {p0, p1}, Lcom/twitter/android/an;->a(Lcom/twitter/model/av/o;)Lcom/twitter/android/ao;

    move-result-object v0

    return-object v0
.end method
