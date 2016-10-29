.class public Lcom/twitter/app/lists/f;
.super Lcom/twitter/android/qi;
.source "Twttr"


# instance fields
.field public final e:Lcom/twitter/library/media/widget/UserImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongViewCast"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/twitter/android/qi;-><init>(Landroid/view/View;)V

    .line 88
    const v0, 0x7f130088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/app/lists/f;->e:Lcom/twitter/library/media/widget/UserImageView;

    .line 89
    return-void
.end method
