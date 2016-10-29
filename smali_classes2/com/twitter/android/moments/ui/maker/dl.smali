.class Lcom/twitter/android/moments/ui/maker/dl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/dk;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/dk;J)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/dl;->b:Lcom/twitter/android/moments/ui/maker/dk;

    iput-wide p2, p0, Lcom/twitter/android/moments/ui/maker/dl;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 47
    packed-switch p2, :pswitch_data_0

    .line 54
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 58
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dl;->b:Lcom/twitter/android/moments/ui/maker/dk;

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/maker/dl;->a:J

    invoke-static {v0, v2, v3}, Lcom/twitter/android/moments/ui/maker/dk;->a(Lcom/twitter/android/moments/ui/maker/dk;J)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
