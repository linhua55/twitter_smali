.class Lcom/twitter/android/timeline/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/timeline/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/e;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/android/timeline/f;->a:Lcom/twitter/android/timeline/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/timeline/f;->a:Lcom/twitter/android/timeline/e;

    invoke-virtual {v0}, Lcom/twitter/android/timeline/e;->h()V

    .line 59
    return-void
.end method
