.class Lcom/twitter/android/av/monetization/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lauk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lauk",
        "<",
        "Lcom/twitter/model/av/o;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/av/monetization/d;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/twitter/android/av/monetization/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/twitter/model/av/o;
    .locals 2

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 146
    new-instance v0, Lcom/twitter/model/av/q;

    invoke-direct {v0}, Lcom/twitter/model/av/q;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/model/av/q;->c()Lcom/twitter/model/av/o;

    move-result-object v0

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    const-string/jumbo v0, "media_monetization_metadata"

    sget-object v1, Lcom/twitter/model/av/o;->a:Lcom/twitter/util/serialization/ah;

    .line 150
    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/o;

    .line 151
    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/model/av/q;

    invoke-direct {v0}, Lcom/twitter/model/av/q;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/model/av/q;->c()Lcom/twitter/model/av/o;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/twitter/android/av/monetization/f;->a(Landroid/content/Intent;)Lcom/twitter/model/av/o;

    move-result-object v0

    return-object v0
.end method
