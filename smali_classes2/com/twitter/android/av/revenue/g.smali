.class public Lcom/twitter/android/av/revenue/g;
.super Lcom/twitter/android/av/g;
.source "Twttr"


# instance fields
.field private final b:Lcom/twitter/android/av/revenue/VideoConversationCardData;

.field private final c:Lcom/twitter/library/av/playback/AVDataSource;


# direct methods
.method public constructor <init>(Lcom/twitter/android/av/revenue/VideoConversationCardData;)V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/av/revenue/g;-><init>(Lcom/twitter/android/av/revenue/VideoConversationCardData;Lcom/twitter/library/av/playback/AVDataSource;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/av/revenue/VideoConversationCardData;Lcom/twitter/library/av/playback/AVDataSource;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/twitter/android/av/g;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/twitter/android/av/revenue/g;->b:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    .line 203
    iput-object p2, p0, Lcom/twitter/android/av/revenue/g;->c:Lcom/twitter/library/av/playback/AVDataSource;

    .line 204
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/twitter/android/av/g;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "video_conversation_data"

    iget-object v2, p0, Lcom/twitter/android/av/revenue/g;->b:Lcom/twitter/android/av/revenue/VideoConversationCardData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/twitter/android/av/revenue/g;->c:Lcom/twitter/library/av/playback/AVDataSource;

    if-eqz v1, :cond_0

    .line 211
    const-string/jumbo v1, "avdatasource"

    iget-object v2, p0, Lcom/twitter/android/av/revenue/g;->c:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    :cond_0
    return-object v0
.end method

.method protected a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/android/av/AVCardCanvasActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const-class v0, Lcom/twitter/android/av/revenue/VideoConversationCardCanvasActivity;

    return-object v0
.end method
