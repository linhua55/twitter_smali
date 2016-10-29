.class public Lcom/twitter/model/topic/i;
.super Lcom/twitter/model/topic/d;
.source "Twttr"


# static fields
.field public static final b:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/topic/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lcom/twitter/model/topic/trends/a;

.field public d:Lcom/twitter/model/topic/trends/n;

.field public e:Lcom/twitter/model/topic/trends/h;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/bm;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/topic/trends/TrendBadge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/topic/j;

    invoke-direct {v0}, Lcom/twitter/model/topic/j;-><init>()V

    sput-object v0, Lcom/twitter/model/topic/i;->b:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/model/topic/d;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/twitter/model/topic/trends/a;Lcom/twitter/model/topic/trends/n;Lcom/twitter/model/topic/trends/h;Ljava/lang/String;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/bm;",
            ">;",
            "Lcom/twitter/model/topic/trends/a;",
            "Lcom/twitter/model/topic/trends/n;",
            "Lcom/twitter/model/topic/trends/h;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/topic/trends/TrendBadge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/twitter/model/topic/d;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    .line 67
    iput-object p3, p0, Lcom/twitter/model/topic/i;->d:Lcom/twitter/model/topic/trends/n;

    .line 68
    iput-object p4, p0, Lcom/twitter/model/topic/i;->e:Lcom/twitter/model/topic/trends/h;

    .line 69
    if-eqz p1, :cond_2

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    .line 71
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0}, Lcom/twitter/model/core/ac;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 73
    :cond_1
    iput-object p1, p0, Lcom/twitter/model/topic/i;->f:Ljava/util/List;

    .line 75
    :cond_2
    iput-object p5, p0, Lcom/twitter/model/topic/i;->h:Ljava/lang/String;

    .line 76
    iput p6, p0, Lcom/twitter/model/topic/i;->i:I

    .line 77
    iput p7, p0, Lcom/twitter/model/topic/i;->k:I

    .line 78
    iput-object p8, p0, Lcom/twitter/model/topic/i;->l:Ljava/util/List;

    .line 79
    return-void
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    if-eqz p0, :cond_0

    const-string/jumbo v0, "minimal"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "full"

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/model/topic/i;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 146
    const/4 v1, 0x0

    .line 148
    if-nez p1, :cond_1

    .line 149
    iget-object v2, p0, Lcom/twitter/model/topic/i;->h:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    iget-object v1, v1, Lcom/twitter/model/topic/trends/a;->d:Lcom/twitter/model/topic/trends/d;

    if-eqz v1, :cond_0

    .line 153
    or-int/lit8 v0, v0, 0x2

    .line 187
    :cond_0
    :goto_1
    return v0

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/twitter/model/topic/i;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/model/topic/i;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 161
    :goto_2
    iget-boolean v1, p0, Lcom/twitter/model/topic/i;->j:Z

    iget-boolean v2, p1, Lcom/twitter/model/topic/i;->j:Z

    if-eq v1, v2, :cond_2

    .line 162
    or-int/lit8 v0, v0, 0x10

    .line 165
    :cond_2
    iget v1, p0, Lcom/twitter/model/topic/i;->i:I

    iget v2, p1, Lcom/twitter/model/topic/i;->i:I

    if-eq v1, v2, :cond_3

    .line 166
    or-int/lit8 v0, v0, 0x8

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/twitter/model/topic/i;->l:Ljava/util/List;

    iget-object v2, p1, Lcom/twitter/model/topic/i;->l:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 170
    or-int/lit8 v0, v0, 0x20

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    iget-object v1, v1, Lcom/twitter/model/topic/trends/a;->d:Lcom/twitter/model/topic/trends/d;

    iget-object v2, p1, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    iget-object v2, v2, Lcom/twitter/model/topic/trends/a;->d:Lcom/twitter/model/topic/trends/d;

    invoke-static {v1, v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 179
    :cond_5
    iget-object v1, p0, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    if-eqz v1, :cond_0

    .line 180
    :cond_6
    iget-object v1, p0, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    .line 182
    :goto_3
    iget-object v1, v1, Lcom/twitter/model/topic/trends/a;->d:Lcom/twitter/model/topic/trends/d;

    if-eqz v1, :cond_0

    .line 183
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 180
    :cond_7
    iget-object v1, p1, Lcom/twitter/model/topic/i;->c:Lcom/twitter/model/topic/trends/a;

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_0
.end method
