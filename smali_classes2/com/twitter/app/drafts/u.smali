.class Lcom/twitter/app/drafts/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lauf;

.field final synthetic b:Laux;

.field final synthetic c:Lcom/twitter/app/drafts/x;

.field final synthetic d:Lcom/twitter/app/drafts/p;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/twitter/app/drafts/s;


# direct methods
.method constructor <init>(Lcom/twitter/app/drafts/s;Lauf;Laux;Lcom/twitter/app/drafts/x;Lcom/twitter/app/drafts/p;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/twitter/app/drafts/u;->f:Lcom/twitter/app/drafts/s;

    iput-object p2, p0, Lcom/twitter/app/drafts/u;->a:Lauf;

    iput-object p3, p0, Lcom/twitter/app/drafts/u;->b:Laux;

    iput-object p4, p0, Lcom/twitter/app/drafts/u;->c:Lcom/twitter/app/drafts/x;

    iput-object p5, p0, Lcom/twitter/app/drafts/u;->d:Lcom/twitter/app/drafts/p;

    iput-object p6, p0, Lcom/twitter/app/drafts/u;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 76
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v2, 0x201

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a([I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 79
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/PromptDialogFragment;

    .line 81
    new-instance v2, Lcom/twitter/app/drafts/v;

    invoke-direct {v2, p0, p1, p3, v1}, Lcom/twitter/app/drafts/v;-><init>(Lcom/twitter/app/drafts/u;Landroid/widget/AdapterView;I[I)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    .line 102
    iget-object v1, p0, Lcom/twitter/app/drafts/u;->e:Landroid/content/Context;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/PromptDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 104
    const/4 v0, 0x1

    return v0

    .line 74
    :array_0
    .array-data 4
        0x7f0a0331
        0x7f0a0330
    .end array-data
.end method
