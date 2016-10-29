.class Lalm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/id;

.field final synthetic b:Lcom/twitter/model/moments/z;

.field final synthetic c:Lall;


# direct methods
.method constructor <init>(Lall;Lcom/twitter/android/moments/ui/fullscreen/id;Lcom/twitter/model/moments/z;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lalm;->c:Lall;

    iput-object p2, p0, Lalm;->a:Lcom/twitter/android/moments/ui/fullscreen/id;

    iput-object p3, p0, Lalm;->b:Lcom/twitter/model/moments/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lalm;->a:Lcom/twitter/android/moments/ui/fullscreen/id;

    iget-object v1, p0, Lalm;->b:Lcom/twitter/model/moments/z;

    iget-object v1, v1, Lcom/twitter/model/moments/z;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/id;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method
