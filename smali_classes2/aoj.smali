.class public Laoj;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/library/media/widget/UserImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/view/View;

.field public final d:Lcom/twitter/library/widget/ActionButton;

.field public e:Lcom/twitter/model/core/TwitterUser;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const v0, 0x7f130088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Laoj;->a:Lcom/twitter/library/media/widget/UserImageView;

    .line 168
    const v0, 0x7f13013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laoj;->b:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f130003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/ActionButton;

    iput-object v0, p0, Laoj;->d:Lcom/twitter/library/widget/ActionButton;

    .line 170
    iput-object p2, p0, Laoj;->c:Landroid/view/View;

    .line 173
    iget-object v0, p0, Laoj;->a:Lcom/twitter/library/media/widget/UserImageView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Laoj;->a:Lcom/twitter/library/media/widget/UserImageView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/twitter/util/ui/a;->a(Landroid/view/View;I)V

    .line 177
    :cond_0
    return-void
.end method
