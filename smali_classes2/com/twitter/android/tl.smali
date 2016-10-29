.class final Lcom/twitter/android/tl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcom/twitter/util/collection/ac",
        "<",
        "Lcom/twitter/model/core/TweetActionType;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/twitter/model/core/TweetActionType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ac;)Lcom/twitter/model/core/TweetActionType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/model/core/TweetActionType;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ac;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TweetActionType;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    check-cast p1, Lcom/twitter/util/collection/ac;

    invoke-virtual {p0, p1}, Lcom/twitter/android/tl;->a(Lcom/twitter/util/collection/ac;)Lcom/twitter/model/core/TweetActionType;

    move-result-object v0

    return-object v0
.end method
