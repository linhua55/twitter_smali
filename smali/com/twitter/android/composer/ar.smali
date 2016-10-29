.class public abstract Lcom/twitter/android/composer/ar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic c:Lcom/twitter/android/composer/ComposerActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/composer/ComposerActivity;)V
    .locals 0

    .prologue
    .line 3480
    iput-object p1, p0, Lcom/twitter/android/composer/ar;->c:Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/twitter/android/composer/ar;->c:Lcom/twitter/android/composer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/android/composer/ComposerActivity;->e(Lcom/twitter/android/composer/ComposerActivity;)Lcom/twitter/android/widget/DraggableDrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/widget/DraggableDrawerLayout;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3485
    invoke-virtual {p0}, Lcom/twitter/android/composer/ar;->a()V

    .line 3487
    :cond_0
    return-void
.end method
