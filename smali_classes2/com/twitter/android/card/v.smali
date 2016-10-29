.class Lcom/twitter/android/card/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/card/CardPreviewView;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/CardPreviewView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/android/card/v;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/twitter/android/card/v;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-static {v0}, Lcom/twitter/android/card/CardPreviewView;->d(Lcom/twitter/android/card/CardPreviewView;)Lcom/twitter/android/card/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/twitter/android/card/v;->a:Lcom/twitter/android/card/CardPreviewView;

    invoke-static {v0}, Lcom/twitter/android/card/CardPreviewView;->d(Lcom/twitter/android/card/CardPreviewView;)Lcom/twitter/android/card/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/card/p;->a()V

    .line 86
    :cond_0
    return-void
.end method
