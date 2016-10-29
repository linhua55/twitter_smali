.class public Lcom/twitter/app/tweetdetails/internal/c;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/vr;

.field private final b:Laxr;


# direct methods
.method public constructor <init>(Lcom/twitter/android/vr;Laxr;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/twitter/app/common/inject/e;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/twitter/app/tweetdetails/internal/c;->a:Lcom/twitter/android/vr;

    .line 27
    iput-object p2, p0, Lcom/twitter/app/tweetdetails/internal/c;->b:Laxr;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Laxo;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Laxo;

    iget-object v1, p0, Lcom/twitter/app/tweetdetails/internal/c;->b:Laxr;

    invoke-direct {v0, v1}, Laxo;-><init>(Laxr;)V

    return-object v0
.end method

.method public b()Lcom/twitter/android/vr;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/app/tweetdetails/internal/c;->a:Lcom/twitter/android/vr;

    return-object v0
.end method
