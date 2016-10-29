.class final Lcom/twitter/android/moments/ui/fullscreen/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/model/core/TwitterUser;

.field final synthetic c:Lcom/twitter/android/moments/ui/fullscreen/a;

.field final synthetic d:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/moments/ui/fullscreen/a;J)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/v;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/v;->b:Lcom/twitter/model/core/TwitterUser;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/v;->c:Lcom/twitter/android/moments/ui/fullscreen/a;

    iput-wide p4, p0, Lcom/twitter/android/moments/ui/fullscreen/v;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 58
    packed-switch p2, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/v;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/v;->b:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/t;->a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/v;->c:Lcom/twitter/android/moments/ui/fullscreen/a;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/v;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/fullscreen/v;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/a;->a(Lcom/twitter/model/core/TwitterUser;J)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
