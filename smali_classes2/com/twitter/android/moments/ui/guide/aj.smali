.class Lcom/twitter/android/moments/ui/guide/aj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;

.field final synthetic b:Lcom/twitter/android/moments/ui/guide/ah;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/ah;Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/aj;->b:Lcom/twitter/android/moments/ui/guide/ah;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/aj;->a:Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aj;->b:Lcom/twitter/android/moments/ui/guide/ah;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/ah;->a(Lcom/twitter/android/moments/ui/guide/ah;)Lcom/twitter/android/moments/ui/guide/q;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aj;->a:Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;

    check-cast v0, Lcom/twitter/android/moments/viewmodels/af;

    invoke-interface {v1, v0}, Lcom/twitter/android/moments/ui/guide/q;->a(Lcom/twitter/android/moments/viewmodels/af;)V

    .line 244
    return-void
.end method
