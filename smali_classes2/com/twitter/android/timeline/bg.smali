.class Lcom/twitter/android/timeline/bg;
.super Lcom/twitter/library/service/ac;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/ac",
        "<",
        "Ljava/lang/Void;",
        "Lcif;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twitter/android/timeline/bf;


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/bf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/timeline/bg;->b:Lcom/twitter/android/timeline/bf;

    iput-object p2, p0, Lcom/twitter/android/timeline/bg;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/library/service/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcif;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/timeline/bg;->b:Lcom/twitter/android/timeline/bf;

    iget-object v1, p0, Lcom/twitter/android/timeline/bg;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/timeline/bf;->a(Lcom/twitter/android/timeline/bf;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Lcif;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bg;->a(Lcif;)V

    return-void
.end method
