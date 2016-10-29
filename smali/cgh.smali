.class public Lcgh;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/model/core/bl;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcgh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcgh;

    invoke-direct {v0}, Lcgh;-><init>()V

    sput-object v0, Lcgh;->a:Lcgh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcmv;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/model/core/bl;
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 46
    new-instance v10, Lcom/twitter/model/core/bl;

    invoke-direct {v10}, Lcom/twitter/model/core/bl;-><init>()V

    .line 47
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 49
    invoke-static {}, Lbix;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v0

    const-string/jumbo v5, "tweet_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    .line 55
    :goto_0
    :try_start_0
    invoke-virtual {v10, v8, v9}, Lcom/twitter/model/core/bl;->g(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->e(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x17

    .line 57
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->h(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x15

    .line 58
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->f(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x16

    .line 59
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->b(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x18

    .line 60
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->c(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/4 v8, 0x5

    .line 61
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->d(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/4 v8, 0x3

    .line 62
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->h(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/4 v8, 0x4

    .line 63
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->d(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/4 v8, 0x2

    .line 64
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->a(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x1a

    .line 65
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->i(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    .line 66
    const/16 v0, 0x12

    .line 67
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v8, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    .line 66
    invoke-static {v0, v8}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x19

    .line 68
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->a(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/4 v8, 0x7

    .line 69
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->e(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x8

    .line 70
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->b(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0xa

    .line 71
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->f(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x9

    .line 72
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->c(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0xb

    .line 73
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->g(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    .line 74
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 75
    if-ne v8, v4, :cond_6

    move v0, v4

    :goto_1
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->c(Z)Lcom/twitter/model/core/bl;

    move-result-object v9

    const/16 v0, 0x2b

    .line 76
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v4, :cond_7

    move v0, v4

    :goto_2
    invoke-virtual {v9, v0}, Lcom/twitter/model/core/bl;->d(Z)Lcom/twitter/model/core/bl;

    .line 78
    const-string/jumbo v0, "rt_status_groups_ref_id"

    .line 79
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x4

    if-ne v8, v0, :cond_8

    move v0, v4

    :goto_3
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->f(Z)Lcom/twitter/model/core/bl;

    move-result-object v9

    const/4 v0, 0x7

    if-ne v8, v0, :cond_9

    move v0, v4

    .line 82
    :goto_4
    invoke-virtual {v9, v0}, Lcom/twitter/model/core/bl;->i(Z)Lcom/twitter/model/core/bl;

    move-result-object v8

    const/16 v0, 0xd

    .line 83
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v4, :cond_a

    move v0, v4

    :goto_5
    invoke-virtual {v8, v0}, Lcom/twitter/model/core/bl;->a(Z)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x23

    .line 84
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->g(I)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x22

    .line 85
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->d(I)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x26

    .line 86
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->l(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x20

    .line 87
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->f(I)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x21

    .line 88
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->j(J)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x24

    .line 89
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->j(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x25

    .line 90
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->k(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x1b

    .line 91
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->a(I)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x1d

    .line 92
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->b(I)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0x13

    .line 93
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->c(I)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v8, 0xc

    .line 94
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/twitter/model/core/bl;->e(I)Lcom/twitter/model/core/bl;

    move-result-object v8

    iget v0, v10, Lcom/twitter/model/core/bl;->M:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    move v0, v4

    .line 95
    :goto_6
    invoke-virtual {v8, v0}, Lcom/twitter/model/core/bl;->b(Z)Lcom/twitter/model/core/bl;

    move-result-object v8

    iget v0, v10, Lcom/twitter/model/core/bl;->M:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    move v0, v4

    .line 96
    :goto_7
    invoke-virtual {v8, v0}, Lcom/twitter/model/core/bl;->g(Z)Lcom/twitter/model/core/bl;

    move-result-object v8

    const/16 v0, 0x1c

    .line 98
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v9, Lcss;->a:Lcom/twitter/util/serialization/d;

    .line 97
    invoke-static {v0, v9}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    invoke-virtual {v8, v0}, Lcom/twitter/model/core/bl;->a(Lcss;)Lcom/twitter/model/core/bl;

    move-result-object v8

    const/16 v0, 0xe

    .line 99
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xf

    .line 100
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v4

    .line 99
    :goto_8
    invoke-virtual {v8, v0}, Lcom/twitter/model/core/bl;->e(Z)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-boolean v8, v10, Lcom/twitter/model/core/bl;->u:Z

    if-eqz v8, :cond_e

    const/16 v8, 0xe

    .line 101
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    :goto_9
    invoke-virtual {v0, v8, v9}, Lcom/twitter/model/core/bl;->a(D)Lcom/twitter/model/core/bl;

    move-result-object v0

    iget-boolean v8, v10, Lcom/twitter/model/core/bl;->u:Z

    if-eqz v8, :cond_0

    const/16 v6, 0xf

    .line 102
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    :cond_0
    invoke-virtual {v0, v6, v7}, Lcom/twitter/model/core/bl;->b(D)Lcom/twitter/model/core/bl;

    move-result-object v6

    const/16 v0, 0x27

    .line 104
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v7, Lcom/twitter/model/geo/TwitterPlace;->a:Lcom/twitter/util/serialization/d;

    .line 103
    invoke-static {v0, v7}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace;

    invoke-virtual {v6, v0}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/geo/TwitterPlace;)Lcom/twitter/model/core/bl;

    move-result-object v6

    const/16 v0, 0x28

    .line 106
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v7, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    .line 105
    invoke-static {v0, v7}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ay;

    invoke-virtual {v6, v0}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v6, 0x29

    .line 107
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/twitter/model/core/bl;->k(J)Lcom/twitter/model/core/bl;

    move-result-object v6

    const/16 v0, 0x1f

    .line 109
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v7, Lclw;->a:Lcom/twitter/util/serialization/ah;

    .line 108
    invoke-static {v0, v7}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclw;

    invoke-virtual {v6, v0}, Lcom/twitter/model/core/bl;->a(Lclw;)Lcom/twitter/model/core/bl;

    move-result-object v6

    const/16 v0, 0x2e

    .line 111
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v7, Lcom/twitter/model/core/cc;->b:Lcom/twitter/util/serialization/ah;

    .line 110
    invoke-static {v0, v7}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cc;

    invoke-virtual {v6, v0}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/core/cc;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/16 v6, 0x2f

    .line 112
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/twitter/model/core/bl;->h(I)Lcom/twitter/model/core/bl;

    .line 114
    const-string/jumbo v0, "cards_kernel_persist_card_state"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const/16 v0, 0x2d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v6, Lclj;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v6}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclj;

    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->a(Lclj;)Lcom/twitter/model/core/bl;

    .line 120
    :cond_1
    const/16 v0, 0x2a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 121
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_f

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_a
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->a(Ljava/lang/Long;)Lcom/twitter/model/core/bl;

    move-result-object v6

    const/16 v0, 0x2c

    .line 122
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v7, Lcom/twitter/model/media/EditableMedia;->j:Lcom/twitter/util/serialization/ah;

    .line 123
    invoke-static {v7}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v7

    .line 122
    invoke-static {v0, v7}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/twitter/model/core/bl;->a(Ljava/util/List;)Lcom/twitter/model/core/bl;

    move-result-object v0

    const/4 v6, 0x0

    .line 124
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/twitter/model/core/bl;->i(J)Lcom/twitter/model/core/bl;

    move-result-object v6

    const/16 v0, 0x1e

    .line 125
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v4, :cond_10

    move v0, v4

    :goto_b
    invoke-virtual {v6, v0}, Lcom/twitter/model/core/bl;->h(Z)Lcom/twitter/model/core/bl;

    .line 127
    const-string/jumbo v0, "status_metadata_soc_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 129
    if-eq v0, v3, :cond_11

    .line 130
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 129
    :goto_c
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->i(I)Lcom/twitter/model/core/bl;

    .line 132
    const-string/jumbo v0, "status_metadata_soc_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 133
    if-eq v0, v3, :cond_12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->l(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    .line 135
    const-string/jumbo v0, "status_metadata_soc_fav_count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 137
    if-eq v0, v3, :cond_13

    .line 138
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 137
    :goto_e
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->j(I)Lcom/twitter/model/core/bl;

    .line 140
    const-string/jumbo v0, "status_metadata_soc_rt_count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 141
    if-eq v0, v3, :cond_14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_f
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->l(I)Lcom/twitter/model/core/bl;

    .line 143
    const-string/jumbo v0, "status_metadata_soc_second_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 145
    if-eq v0, v3, :cond_15

    .line 146
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_10
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->m(Ljava/lang/String;)Lcom/twitter/model/core/bl;

    .line 148
    const-string/jumbo v0, "status_metadata_soc_others_count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 150
    if-eq v0, v3, :cond_16

    .line 151
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 150
    :goto_11
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->k(I)Lcom/twitter/model/core/bl;

    .line 153
    const-string/jumbo v0, "status_metadata_highlights"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 154
    if-eq v0, v3, :cond_2

    .line 156
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v4, Lcom/twitter/model/core/t;->a:Lcom/twitter/util/serialization/ah;

    .line 157
    invoke-static {v4}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v4

    .line 155
    invoke-static {v0, v4}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 158
    if-nez v0, :cond_17

    move-object v0, v2

    :goto_12
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->a([Lcom/twitter/model/core/e;)Lcom/twitter/model/core/bl;

    .line 162
    :cond_2
    const-string/jumbo v0, "timeline_flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 163
    if-eq v0, v3, :cond_18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_13
    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->m(I)Lcom/twitter/model/core/bl;

    .line 168
    const-string/jumbo v0, "timeline_scribe_content"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 169
    if-eq v0, v3, :cond_3

    .line 170
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    invoke-virtual {v10, v0}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/core/bl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_3
    invoke-static {}, Lbix;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v0

    const-string/jumbo v1, "tweet_id"

    invoke-virtual {v0, v1, v5}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_4
    return-object v10

    :cond_5
    move-object v5, v2

    .line 52
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 75
    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 76
    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 81
    goto/16 :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_4

    :cond_a
    move v0, v1

    .line 83
    goto/16 :goto_5

    :cond_b
    move v0, v1

    .line 94
    goto/16 :goto_6

    :cond_c
    move v0, v1

    .line 95
    goto/16 :goto_7

    :cond_d
    move v0, v1

    .line 100
    goto/16 :goto_8

    :cond_e
    move-wide v8, v6

    .line 101
    goto/16 :goto_9

    :cond_f
    move-object v0, v2

    .line 121
    goto/16 :goto_a

    :cond_10
    move v0, v1

    .line 125
    goto/16 :goto_b

    :cond_11
    move v0, v3

    .line 130
    goto/16 :goto_c

    :cond_12
    move-object v0, v2

    .line 133
    goto/16 :goto_d

    :cond_13
    move v0, v1

    .line 138
    goto/16 :goto_e

    :cond_14
    move v0, v1

    .line 141
    goto/16 :goto_f

    :cond_15
    move-object v0, v2

    .line 146
    goto/16 :goto_10

    :cond_16
    move v0, v1

    .line 151
    goto/16 :goto_11

    .line 159
    :cond_17
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/twitter/model/core/e;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/model/core/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_12

    :cond_18
    move v0, v1

    .line 163
    goto :goto_13

    .line 174
    :catchall_0
    move-exception v0

    invoke-static {}, Lbix;->b()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 175
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v1

    const-string/jumbo v2, "tweet_id"

    invoke-virtual {v1, v2, v5}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcgh;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/bl;

    move-result-object v0

    return-object v0
.end method
