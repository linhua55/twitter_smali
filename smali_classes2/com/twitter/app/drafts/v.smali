.class Lcom/twitter/app/drafts/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field final synthetic a:Landroid/widget/AdapterView;

.field final synthetic b:I

.field final synthetic c:[I

.field final synthetic d:Lcom/twitter/app/drafts/u;


# direct methods
.method constructor <init>(Lcom/twitter/app/drafts/u;Landroid/widget/AdapterView;I[I)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/twitter/app/drafts/v;->d:Lcom/twitter/app/drafts/u;

    iput-object p2, p0, Lcom/twitter/app/drafts/v;->a:Landroid/widget/AdapterView;

    iput p3, p0, Lcom/twitter/app/drafts/v;->b:I

    iput-object p4, p0, Lcom/twitter/app/drafts/v;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/app/drafts/v;->a:Landroid/widget/AdapterView;

    iget v1, p0, Lcom/twitter/app/drafts/v;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/d;

    .line 85
    iget-object v1, p0, Lcom/twitter/app/drafts/v;->c:[I

    aget v1, v1, p3

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v1, p0, Lcom/twitter/app/drafts/v;->d:Lcom/twitter/app/drafts/u;

    iget-object v1, v1, Lcom/twitter/app/drafts/u;->a:Lauf;

    iget-object v2, p0, Lcom/twitter/app/drafts/v;->d:Lcom/twitter/app/drafts/u;

    iget-object v2, v2, Lcom/twitter/app/drafts/u;->b:Laux;

    iget-object v3, p0, Lcom/twitter/app/drafts/v;->d:Lcom/twitter/app/drafts/u;

    iget-object v3, v3, Lcom/twitter/app/drafts/u;->c:Lcom/twitter/app/drafts/x;

    iget-object v4, p0, Lcom/twitter/app/drafts/v;->d:Lcom/twitter/app/drafts/u;

    iget-object v4, v4, Lcom/twitter/app/drafts/u;->d:Lcom/twitter/app/drafts/p;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/twitter/app/drafts/s;->a(Lauf;Lcom/twitter/model/drafts/d;Laux;Lcom/twitter/app/drafts/x;Lcom/twitter/app/drafts/p;)V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v1, p0, Lcom/twitter/app/drafts/v;->d:Lcom/twitter/app/drafts/u;

    iget-object v1, v1, Lcom/twitter/app/drafts/u;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 93
    iget-wide v4, v0, Lcom/twitter/model/drafts/d;->b:J

    iget-object v0, p0, Lcom/twitter/app/drafts/v;->d:Lcom/twitter/app/drafts/u;

    iget-object v0, v0, Lcom/twitter/app/drafts/u;->e:Landroid/content/Context;

    invoke-static {v4, v5, v0, v2, v1}, Lcom/twitter/app/drafts/s;->a(JLandroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f0a0330
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
