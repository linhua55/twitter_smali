.class Lcom/twitter/android/card/ac;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/twitter/android/card/ab;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/ab;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/twitter/android/card/ac;->d:Lcom/twitter/android/card/ab;

    iput-object p2, p0, Lcom/twitter/android/card/ac;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/card/ac;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/twitter/android/card/ac;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 195
    packed-switch p2, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/card/ac;->d:Lcom/twitter/android/card/ab;

    iget-object v0, v0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "share"

    iget-object v2, p0, Lcom/twitter/android/card/ac;->d:Lcom/twitter/android/card/ab;

    invoke-virtual {v2}, Lcom/twitter/android/card/ab;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/twitter/android/card/ac;->d:Lcom/twitter/android/card/ab;

    iget-object v0, v0, Lcom/twitter/android/card/ab;->s:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/ac;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/card/ac;->d:Lcom/twitter/android/card/ab;

    iget-object v0, v0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "share"

    iget-object v2, p0, Lcom/twitter/android/card/ac;->d:Lcom/twitter/android/card/ab;

    invoke-virtual {v2}, Lcom/twitter/android/card/ab;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/twitter/android/card/ac;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/card/ac;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/card/ac;->d:Lcom/twitter/android/card/ab;

    iget-object v0, v0, Lcom/twitter/android/card/ab;->r:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "share"

    iget-object v2, p0, Lcom/twitter/android/card/ac;->d:Lcom/twitter/android/card/ab;

    invoke-virtual {v2}, Lcom/twitter/android/card/ab;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/twitter/android/card/ac;->d:Lcom/twitter/android/card/ab;

    iget-object v0, v0, Lcom/twitter/android/card/ab;->s:Lcom/twitter/android/card/d;

    iget-object v1, p0, Lcom/twitter/android/card/ac;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/card/ac;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
