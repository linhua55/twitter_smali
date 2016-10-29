.class public Lbon;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(ILandroid/database/sqlite/SQLiteDatabase;JZZ)Lbol;
    .locals 6

    .prologue
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 47
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not create EventCacher with ConversationEntriesType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_1
    new-instance v0, Lbor;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbor;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    .line 44
    :goto_0
    return-object v0

    .line 20
    :pswitch_2
    new-instance v0, Lbov;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbov;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 23
    :pswitch_3
    new-instance v0, Lbos;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbos;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 26
    :pswitch_4
    new-instance v0, Lbot;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbot;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 29
    :pswitch_5
    new-instance v0, Lbox;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbox;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 32
    :pswitch_6
    new-instance v0, Lbou;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbou;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 35
    :pswitch_7
    new-instance v0, Lboi;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lboi;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 38
    :pswitch_8
    new-instance v0, Lboh;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lboh;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 41
    :pswitch_9
    new-instance v0, Lbog;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbog;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 44
    :pswitch_a
    new-instance v0, Lboo;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lboo;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static b(ILandroid/database/sqlite/SQLiteDatabase;JZZ)Lbom;
    .locals 6

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 77
    :pswitch_0
    invoke-static/range {p0 .. p5}, Lbon;->a(ILandroid/database/sqlite/SQLiteDatabase;JZZ)Lbol;

    move-result-object v0

    :goto_0
    return-object v0

    .line 58
    :pswitch_1
    new-instance v0, Lboq;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lboq;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 61
    :pswitch_2
    new-instance v0, Lbop;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbop;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 64
    :pswitch_3
    new-instance v0, Lboy;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lboy;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 68
    :pswitch_4
    new-instance v0, Lbow;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbow;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 71
    :pswitch_5
    new-instance v0, Lboj;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lboj;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 74
    :pswitch_6
    new-instance v0, Lbok;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbok;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
