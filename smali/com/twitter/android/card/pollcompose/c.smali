.class Lcom/twitter/android/card/pollcompose/c;
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
        "Lcom/twitter/model/media/EditableImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/card/pollcompose/AddImagePollActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/pollcompose/AddImagePollActivity;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/twitter/android/card/pollcompose/c;->a:Lcom/twitter/android/card/pollcompose/AddImagePollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/media/EditableImage;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/android/card/pollcompose/c;->a:Lcom/twitter/android/card/pollcompose/AddImagePollActivity;

    invoke-virtual {v0, p1}, Lcom/twitter/android/card/pollcompose/AddImagePollActivity;->a(Lcom/twitter/model/media/EditableImage;)V

    .line 210
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Lcom/twitter/model/media/EditableImage;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/pollcompose/c;->a(Lcom/twitter/model/media/EditableImage;)V

    return-void
.end method
