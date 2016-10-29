.class public Lcom/twitter/android/moments/data/l;
.super Lcom/twitter/android/moments/data/e;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/moments/data/e",
        "<",
        "Lcom/twitter/android/moments/viewmodels/v;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/data/n;

.field private final b:Lcom/twitter/library/client/bf;

.field private final c:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/data/n;Landroid/support/v4/content/Loader;Landroid/support/v4/app/LoaderManager;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/data/n;",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/support/v4/app/LoaderManager;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p3, p4}, Lcom/twitter/android/moments/data/e;-><init>(Landroid/support/v4/app/LoaderManager;I)V

    .line 35
    new-instance v0, Lcom/twitter/android/moments/data/m;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/data/m;-><init>(Lcom/twitter/android/moments/data/l;)V

    iput-object v0, p0, Lcom/twitter/android/moments/data/l;->b:Lcom/twitter/library/client/bf;

    .line 62
    iput-object p1, p0, Lcom/twitter/android/moments/data/l;->a:Lcom/twitter/android/moments/data/n;

    .line 63
    iput-object p2, p0, Lcom/twitter/android/moments/data/l;->c:Landroid/support/v4/content/Loader;

    .line 64
    return-void
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v2

    .line 171
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    const-string/jumbo v0, "moments_guide_moment_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 174
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 175
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 176
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :cond_1
    invoke-virtual {v2}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 174
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/l;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/twitter/android/moments/data/l;->e:Z

    return p1
.end method

.method private a(Ljava/lang/String;Lcom/twitter/model/moments/MomentGuideSectionType;Ljava/lang/String;Lcom/twitter/model/moments/MomentGuideSectionType;)Z
    .locals 1

    .prologue
    .line 165
    invoke-static {p1, p3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/moments/data/l;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/twitter/android/moments/data/l;->d:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/android/moments/viewmodels/v;
    .locals 18

    .prologue
    .line 90
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 91
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v14

    .line 92
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v12

    .line 93
    new-instance v15, Lcom/twitter/android/moments/data/v;

    invoke-direct {v15}, Lcom/twitter/android/moments/data/v;-><init>()V

    .line 96
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v16

    .line 97
    const/4 v13, 0x0

    .line 98
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v5, 0x0

    .line 105
    :goto_0
    const-string/jumbo v2, "moments_sections_section_title"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 107
    const-string/jumbo v2, "moments_sections_section_type"

    .line 108
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const-class v4, Lcom/twitter/model/moments/MomentGuideSectionType;

    .line 109
    invoke-static {v4}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v4

    .line 107
    invoke-static {v2, v4}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/MomentGuideSectionType;

    .line 110
    const-string/jumbo v4, "moments_sections_section_category_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    const-string/jumbo v4, "moments_sections_section_footer"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 114
    const-string/jumbo v4, "moments_sections_section_footer_deeplink"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3, v10, v2}, Lcom/twitter/android/moments/data/l;->a(Ljava/lang/String;Lcom/twitter/model/moments/MomentGuideSectionType;Ljava/lang/String;Lcom/twitter/model/moments/MomentGuideSectionType;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 118
    invoke-virtual {v12}, Lcom/twitter/util/collection/r;->h()Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz v3, :cond_0

    .line 119
    new-instance v17, Lcom/twitter/android/moments/viewmodels/ae;

    invoke-direct/range {v17 .. v17}, Lcom/twitter/android/moments/viewmodels/ae;-><init>()V

    .line 120
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/twitter/android/moments/viewmodels/ae;->a(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v11

    .line 121
    invoke-virtual {v11, v3}, Lcom/twitter/android/moments/viewmodels/ae;->a(Lcom/twitter/model/moments/MomentGuideSectionType;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v11

    .line 122
    invoke-virtual {v12}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v11, v3}, Lcom/twitter/android/moments/viewmodels/ae;->a(Ljava/util/List;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v9}, Lcom/twitter/android/moments/viewmodels/ae;->b(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v3

    .line 124
    invoke-virtual {v3, v7}, Lcom/twitter/android/moments/viewmodels/ae;->c(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v3

    .line 125
    invoke-virtual {v3, v5}, Lcom/twitter/android/moments/viewmodels/ae;->d(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/twitter/android/moments/viewmodels/ae;->q()Ljava/lang/Object;

    move-result-object v3

    .line 119
    invoke-virtual {v14, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 133
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v3

    move-object v5, v8

    move-object v7, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v10

    .line 135
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/twitter/android/moments/data/v;->a(Landroid/database/Cursor;)Lcom/twitter/android/moments/viewmodels/MomentModule;

    move-result-object v8

    .line 136
    invoke-virtual {v8}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v9

    iget-wide v10, v9, Lcom/twitter/model/moments/ad;->b:J

    .line 137
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 138
    invoke-virtual {v7, v8}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 139
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v8, v13

    .line 145
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 147
    if-eqz v2, :cond_1

    .line 148
    new-instance v8, Lcom/twitter/android/moments/viewmodels/ae;

    invoke-direct {v8}, Lcom/twitter/android/moments/viewmodels/ae;-><init>()V

    .line 149
    invoke-virtual {v8, v6}, Lcom/twitter/android/moments/viewmodels/ae;->a(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v6

    .line 150
    invoke-virtual {v6, v2}, Lcom/twitter/android/moments/viewmodels/ae;->a(Lcom/twitter/model/moments/MomentGuideSectionType;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v6

    .line 151
    invoke-virtual {v7}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v6, v2}, Lcom/twitter/android/moments/viewmodels/ae;->a(Ljava/util/List;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v2

    .line 152
    invoke-virtual {v2, v5}, Lcom/twitter/android/moments/viewmodels/ae;->b(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v2

    .line 153
    invoke-virtual {v2, v4}, Lcom/twitter/android/moments/viewmodels/ae;->c(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v2

    .line 154
    invoke-virtual {v2, v3}, Lcom/twitter/android/moments/viewmodels/ae;->d(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ae;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/twitter/android/moments/viewmodels/ae;->q()Ljava/lang/Object;

    move-result-object v2

    .line 148
    invoke-virtual {v14, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 159
    :cond_1
    new-instance v3, Lcom/twitter/android/moments/viewmodels/v;

    const-string/jumbo v2, "moments_guide_user_states_is_updated"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/twitter/android/moments/data/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v2, "moments_guide_user_states_is_read"

    .line 160
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/twitter/android/moments/data/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v14}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v3, v4, v5, v2}, Lcom/twitter/android/moments/viewmodels/v;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 159
    return-object v3

    .line 140
    :cond_2
    if-nez v13, :cond_5

    .line 141
    const/4 v8, 0x1

    .line 142
    new-instance v9, Lbiv;

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "Got duplicate moment in moments sectioned guide"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v9}, Lbix;->a(Lbiv;)V

    goto :goto_2

    :cond_3
    move-object v4, v7

    move-object v2, v3

    move-object v6, v11

    move-object v3, v5

    move-object v7, v12

    move-object v5, v9

    goto/16 :goto_1

    :cond_4
    move-object v9, v5

    move-object v11, v6

    move v13, v8

    move-object v12, v7

    move-object v7, v4

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_0

    :cond_5
    move v8, v13

    goto :goto_2
.end method

.method public synthetic c(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/l;->a(Landroid/database/Cursor;)Lcom/twitter/android/moments/viewmodels/v;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/data/l;->e:Z

    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/data/l;->a:Lcom/twitter/android/moments/data/n;

    iget-object v1, p0, Lcom/twitter/android/moments/data/l;->b:Lcom/twitter/library/client/bf;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/data/n;->a(Lcom/twitter/library/client/bf;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/data/l;->e:Z

    .line 79
    iget-object v0, p0, Lcom/twitter/android/moments/data/l;->a:Lcom/twitter/android/moments/data/n;

    iget-object v1, p0, Lcom/twitter/android/moments/data/l;->b:Lcom/twitter/library/client/bf;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/data/n;->b(Lcom/twitter/library/client/bf;)V

    .line 80
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/twitter/android/moments/data/l;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/twitter/android/moments/data/l;->e:Z

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/twitter/android/moments/data/l;->c:Landroid/support/v4/content/Loader;

    return-object v0
.end method
