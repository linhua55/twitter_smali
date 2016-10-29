.class public Lcom/twitter/library/commerce/model/r;
.super Lcom/twitter/library/commerce/model/y;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/library/commerce/model/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Calendar;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Long;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Long;

.field private l:Ljava/lang/String;

.field private m:Ljava/math/BigDecimal;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/Long;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/library/commerce/model/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/library/commerce/model/t;-><init>(Lcom/twitter/library/commerce/model/s;)V

    sput-object v0, Lcom/twitter/library/commerce/model/r;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/twitter/library/commerce/model/y;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/commerce/model/r;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->i:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/library/commerce/model/r;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->m:Ljava/math/BigDecimal;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/library/commerce/model/r;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->f:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/library/commerce/model/r;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->r:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/commerce/model/r;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->r:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/twitter/library/commerce/model/r;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->q:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/library/commerce/model/r;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->k:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic b(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/twitter/library/commerce/model/r;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->q:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic c(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/twitter/library/commerce/model/r;)Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->m:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/twitter/library/commerce/model/r;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->k:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic h(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcom/twitter/library/commerce/model/r;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->i:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/library/commerce/model/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/twitter/library/commerce/model/r;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->f:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic n(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/twitter/library/commerce/model/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/twitter/library/commerce/model/r;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 99
    const-string/jumbo v0, ""

    .line 102
    :goto_1
    return-object v0

    .line 85
    :sswitch_0
    const-string/jumbo v2, "PROCESSING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "SENT_TO_SELLER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "CANCELED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 87
    :pswitch_0
    sget v0, Lbkb;->commerce_order_status_processing:I

    .line 102
    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 91
    :pswitch_1
    sget v0, Lbkb;->commerce_order_status_sent_to_seller:I

    goto :goto_2

    .line 95
    :pswitch_2
    sget v0, Lbkb;->commerce_order_status_cancelled:I

    goto :goto_2

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x274e7499 -> :sswitch_2
        0x36141b13 -> :sswitch_0
        0x4698a9dc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->i:Ljava/lang/Long;

    .line 123
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public a(Ljava/math/BigDecimal;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->m:Ljava/math/BigDecimal;

    .line 155
    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->f:Ljava/util/Calendar;

    .line 77
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->r:Ljava/util/Map;

    .line 147
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->k:Ljava/lang/Long;

    .line 139
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->q:Ljava/lang/Long;

    .line 195
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->e:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public d()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->f:Ljava/util/Calendar;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->h:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->l:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public g()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->k:Ljava/lang/Long;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->n:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->r:Ljava/util/Map;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->j:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public i()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->m:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->o:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/twitter/library/commerce/model/r;->p:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->o:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->p:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/twitter/library/commerce/model/r;->q:Ljava/lang/Long;

    return-object v0
.end method
