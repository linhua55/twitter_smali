.class Lcom/twitter/android/moments/ui/maker/bi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/bg;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/bg;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bi;->a:Lcom/twitter/android/moments/ui/maker/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bi;->a:Lcom/twitter/android/moments/ui/maker/bg;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/bg;->b(Lcom/twitter/android/moments/ui/maker/bg;)V

    .line 49
    :cond_0
    return-void
.end method
