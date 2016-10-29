.class Lcom/twitter/android/card/pollcompose/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Landroid/net/Uri;",
        "Lcom/twitter/media/model/MediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/card/pollcompose/AddImagePollActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/pollcompose/AddImagePollActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/twitter/android/card/pollcompose/a;->a:Lcom/twitter/android/card/pollcompose/AddImagePollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/twitter/media/model/MediaFile;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/android/card/pollcompose/a;->a:Lcom/twitter/android/card/pollcompose/AddImagePollActivity;

    invoke-virtual {v0}, Lcom/twitter/android/card/pollcompose/AddImagePollActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    invoke-static {v0, p1, v1}, Lcom/twitter/media/model/MediaFile;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/media/model/MediaType;)Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/pollcompose/a;->a(Landroid/net/Uri;)Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    return-object v0
.end method
