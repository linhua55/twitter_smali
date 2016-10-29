.class Lcom/twitter/android/av/ag;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/av/af;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/af;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/twitter/android/av/ag;->a:Lcom/twitter/android/av/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/av/ag;->a:Lcom/twitter/android/av/af;

    iget-object v1, p0, Lcom/twitter/android/av/ag;->a:Lcom/twitter/android/av/af;

    invoke-static {v1}, Lcom/twitter/android/av/af;->a(Lcom/twitter/android/av/af;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/av/af;->a:Ljava/util/Set;

    .line 35
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/av/ag;->a(Ljava/lang/Void;)V

    return-void
.end method
