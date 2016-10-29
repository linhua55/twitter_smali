.class Lcom/twitter/android/card/x;
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
.field final synthetic a:Lcom/twitter/android/card/ConsumerPollCard;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/ConsumerPollCard;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/twitter/android/card/x;->a:Lcom/twitter/android/card/ConsumerPollCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/twitter/android/card/x;->a:Lcom/twitter/android/card/ConsumerPollCard;

    iget-object v1, p0, Lcom/twitter/android/card/x;->a:Lcom/twitter/android/card/ConsumerPollCard;

    iget-object v1, v1, Lcom/twitter/android/card/ConsumerPollCard;->b:Lcln;

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/ConsumerPollCard;->a(Lcln;)V

    .line 396
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 392
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/x;->a(Ljava/lang/Void;)V

    return-void
.end method
