.class Lcom/twitter/android/card/pollcompose/v;
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
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/card/pollcompose/PollComposeView;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/pollcompose/PollComposeView;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/twitter/android/card/pollcompose/v;->a:Lcom/twitter/android/card/pollcompose/PollComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/twitter/android/card/pollcompose/v;->a:Lcom/twitter/android/card/pollcompose/PollComposeView;

    iget-object v0, v0, Lcom/twitter/android/card/pollcompose/PollComposeView;->b:Lcom/twitter/android/card/pollcompose/ac;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/twitter/android/card/pollcompose/v;->a:Lcom/twitter/android/card/pollcompose/PollComposeView;

    iget-object v0, v0, Lcom/twitter/android/card/pollcompose/PollComposeView;->b:Lcom/twitter/android/card/pollcompose/ac;

    invoke-interface {v0}, Lcom/twitter/android/card/pollcompose/ac;->h()V

    .line 136
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/pollcompose/v;->a(Landroid/view/View;)V

    return-void
.end method
