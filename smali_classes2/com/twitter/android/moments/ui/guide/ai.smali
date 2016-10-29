.class Lcom/twitter/android/moments/ui/guide/ai;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/guide/ah;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/ah;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/ai;->a:Lcom/twitter/android/moments/ui/guide/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ai;->a:Lcom/twitter/android/moments/ui/guide/ah;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/guide/ah;->a(Lcom/twitter/android/moments/ui/guide/ah;)Lcom/twitter/android/moments/ui/guide/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/guide/q;->a()V

    .line 140
    return-void
.end method
