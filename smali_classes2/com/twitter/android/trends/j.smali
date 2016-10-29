.class Lcom/twitter/android/trends/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/trends/TrendsPlusFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/trends/TrendsPlusFragment;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/twitter/android/trends/j;->a:Lcom/twitter/android/trends/TrendsPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/twitter/android/trends/j;->a:Lcom/twitter/android/trends/TrendsPlusFragment;

    invoke-virtual {v0}, Lcom/twitter/android/trends/TrendsPlusFragment;->g()V

    .line 229
    return-void
.end method
