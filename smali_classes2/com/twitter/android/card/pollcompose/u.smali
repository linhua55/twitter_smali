.class Lcom/twitter/android/card/pollcompose/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/card/pollcompose/PollComposeView;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/pollcompose/PollComposeView;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/twitter/android/card/pollcompose/u;->a:Lcom/twitter/android/card/pollcompose/PollComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/android/card/pollcompose/u;->a:Lcom/twitter/android/card/pollcompose/PollComposeView;

    iget-object v0, v0, Lcom/twitter/android/card/pollcompose/PollComposeView;->b:Lcom/twitter/android/card/pollcompose/ac;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/twitter/android/card/pollcompose/u;->a:Lcom/twitter/android/card/pollcompose/PollComposeView;

    iget-object v0, v0, Lcom/twitter/android/card/pollcompose/PollComposeView;->b:Lcom/twitter/android/card/pollcompose/ac;

    invoke-interface {v0}, Lcom/twitter/android/card/pollcompose/ac;->f()V

    .line 107
    :cond_0
    return-void
.end method
