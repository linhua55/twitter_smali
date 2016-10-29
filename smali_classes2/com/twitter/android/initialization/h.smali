.class Lcom/twitter/android/initialization/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/n",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/initialization/g;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/g;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/twitter/android/initialization/h;->a:Lcom/twitter/android/initialization/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcjv;->a(IZ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/twitter/android/initialization/h;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
