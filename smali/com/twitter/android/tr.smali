.class Lcom/twitter/android/tr;
.super Lawh;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetActivity;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/twitter/android/tr;->a:Lcom/twitter/android/TweetActivity;

    invoke-direct {p0}, Lawh;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/twitter/android/tr;->a:Lcom/twitter/android/TweetActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetActivity;->setResult(I)V

    .line 395
    iget-object v0, p0, Lcom/twitter/android/tr;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0}, Lcom/twitter/android/TweetActivity;->finish()V

    .line 396
    return-void
.end method
