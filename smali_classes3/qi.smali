.class public final Lqi;
.super Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;
.source "Twttr"


# instance fields
.field public a:[Lqh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;-><init>()V

    .line 952
    invoke-virtual {p0}, Lqi;->a()Lqi;

    .line 953
    return-void
.end method


# virtual methods
.method public a()Lqi;
    .locals 1

    .prologue
    .line 956
    invoke-static {}, Lqh;->a()[Lqh;

    move-result-object v0

    iput-object v0, p0, Lqi;->a:[Lqh;

    .line 957
    const/4 v0, -0x1

    iput v0, p0, Lqi;->F:I

    .line 958
    return-object p0
.end method

.method public a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;)Lqi;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 995
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a()I

    move-result v0

    .line 996
    sparse-switch v0, :sswitch_data_0

    .line 1000
    invoke-static {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/e;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    :sswitch_0
    return-object p0

    .line 1006
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/e;->b(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;I)I

    move-result v2

    .line 1008
    iget-object v0, p0, Lqi;->a:[Lqh;

    if-nez v0, :cond_2

    move v0, v1

    .line 1009
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lqh;

    .line 1011
    if-eqz v0, :cond_1

    .line 1012
    iget-object v3, p0, Lqi;->a:[Lqh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1015
    new-instance v3, Lqh;

    invoke-direct {v3}, Lqh;-><init>()V

    aput-object v3, v2, v0

    .line 1016
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    .line 1017
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a()I

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1008
    :cond_2
    iget-object v0, p0, Lqi;->a:[Lqh;

    array-length v0, v0

    goto :goto_1

    .line 1020
    :cond_3
    new-instance v3, Lqh;

    invoke-direct {v3}, Lqh;-><init>()V

    aput-object v3, v2, v0

    .line 1021
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;)V

    .line 1022
    iput-object v2, p0, Lqi;->a:[Lqh;

    goto :goto_0

    .line 996
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic b(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;)Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    invoke-virtual {p0, p1}, Lqi;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/nano/a;)Lqi;

    move-result-object v0

    return-object v0
.end method
