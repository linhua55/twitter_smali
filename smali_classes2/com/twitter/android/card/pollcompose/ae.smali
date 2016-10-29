.class public Lcom/twitter/android/card/pollcompose/ae;
.super Lvv;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/card/pollcompose/af;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lvv;-><init>()V

    return-void
.end method

.method public static b(Lcom/twitter/android/client/tweetuploadmanager/c;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/twitter/android/client/tweetuploadmanager/c;->g()Lcom/twitter/model/drafts/d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/twitter/android/client/tweetuploadmanager/c;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/twitter/android/client/tweetuploadmanager/c;->g()Lcom/twitter/model/drafts/d;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return v2

    :cond_0
    iget-object v3, v0, Lcom/twitter/model/drafts/d;->k:Lclp;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/twitter/model/drafts/d;->k:Lclp;

    invoke-virtual {v0}, Lclp;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 65
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/client/tweetuploadmanager/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v0, v3, :cond_2

    :goto_2
    move v2, v1

    .line 64
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 65
    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/twitter/android/client/tweetuploadmanager/c;Lcom/twitter/util/y;)Lcom/twitter/util/concurrent/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/client/tweetuploadmanager/c;",
            "Lcom/twitter/util/y",
            "<",
            "Lbqy;",
            ">;)",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Lclr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/util/concurrent/ObservablePromise;

    invoke-direct {v0}, Lcom/twitter/util/concurrent/ObservablePromise;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/twitter/android/client/tweetuploadmanager/c;->g()Lcom/twitter/model/drafts/d;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/twitter/model/drafts/d;->k:Lclp;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/twitter/model/drafts/d;->k:Lclp;

    invoke-virtual {v2}, Lclp;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Lcom/twitter/android/card/pollcompose/af;

    iget-object v1, v1, Lcom/twitter/model/drafts/d;->k:Lclp;

    invoke-direct {v2, p1, v1, p2, v0}, Lcom/twitter/android/card/pollcompose/af;-><init>(Lcom/twitter/android/client/tweetuploadmanager/c;Lclp;Lcom/twitter/util/y;Lcom/twitter/util/concurrent/ObservablePromise;)V

    iput-object v2, p0, Lcom/twitter/android/card/pollcompose/ae;->a:Lcom/twitter/android/card/pollcompose/af;

    .line 43
    invoke-virtual {p1}, Lcom/twitter/android/client/tweetuploadmanager/c;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/card/pollcompose/ae;->a:Lcom/twitter/android/card/pollcompose/af;

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/ObservablePromise;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/client/tweetuploadmanager/c;)Z
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/card/pollcompose/ae;->a:Lcom/twitter/android/card/pollcompose/af;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/pollcompose/af;->cancel(Z)Z

    move-result v0

    return v0
.end method
