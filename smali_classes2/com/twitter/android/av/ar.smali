.class Lcom/twitter/android/av/ar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/twitter/android/av/ar;->a:Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/twitter/android/av/ar;->a:Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;

    invoke-static {v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->a(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;)Lcom/twitter/android/card/i;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->o:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 192
    iget-object v1, p0, Lcom/twitter/android/av/ar;->a:Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;

    iget-object v0, p0, Lcom/twitter/android/av/ar;->a:Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;

    invoke-static {v0}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->b(Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;)Lcom/twitter/android/av/revenue/VideoConversationCardData;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/android/av/revenue/VideoConversationCardData;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/twitter/android/av/FullscreenConversationCardCanvasChromeView;->a(Ljava/lang/String;I)V

    .line 193
    return-void
.end method
