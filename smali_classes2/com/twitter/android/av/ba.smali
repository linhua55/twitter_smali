.class Lcom/twitter/android/av/ba;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;


# direct methods
.method constructor <init>(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/twitter/android/av/ba;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/av/ba;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-static {v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)Lcom/twitter/android/av/bc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/twitter/android/av/ba;->a:Lcom/twitter/android/av/PeriscopeFullscreenChromeView;

    invoke-static {v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)Lcom/twitter/android/av/bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/av/bc;->a()V

    .line 84
    :cond_0
    return-void
.end method
