.class public Lcom/twitter/model/topic/trends/d;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/topic/trends/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/twitter/model/topic/trends/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/topic/trends/e;-><init>(Lcom/twitter/model/topic/trends/b;)V

    sput-object v0, Lcom/twitter/model/topic/trends/d;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    .line 91
    iput p2, p0, Lcom/twitter/model/topic/trends/d;->c:I

    .line 92
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 116
    iget v1, p0, Lcom/twitter/model/topic/trends/d;->c:I

    packed-switch v1, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 118
    :pswitch_0
    const-string/jumbo v1, "neutral"

    iget-object v2, p0, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :pswitch_1
    const-string/jumbo v1, "up"

    iget-object v2, p0, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const-string/jumbo v1, "down"

    iget-object v2, p0, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v0, 0x3

    goto :goto_0

    .line 132
    :pswitch_2
    const-string/jumbo v1, "up"

    iget-object v2, p0, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const/4 v0, 0x2

    goto :goto_0

    .line 134
    :cond_2
    const-string/jumbo v1, "down"

    iget-object v2, p0, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v0, 0x4

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    if-ne p0, p1, :cond_1

    .line 97
    const/4 v0, 0x1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 102
    check-cast p1, Lcom/twitter/model/topic/trends/d;

    .line 103
    iget v1, p0, Lcom/twitter/model/topic/trends/d;->c:I

    iget v2, p1, Lcom/twitter/model/topic/trends/d;->c:I

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/twitter/model/topic/trends/d;->c:I

    iget v1, p0, Lcom/twitter/model/topic/trends/d;->c:I

    ushr-int/lit8 v1, v1, 0x20

    xor-int/2addr v0, v1

    .line 111
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/topic/trends/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 112
    return v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
